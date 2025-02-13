import 'package:drift/drift.dart';
import 'package:test/test.dart';

import '../../test_utils/test_utils.dart';

void main() {
  const foo = CustomExpression<int>('foo', precedence: Precedence.primary);
  const x = CustomExpression<String>('x');
  const y = CustomExpression<int>('y');

  group('WINDOW FUNCTION', () {
    test('with single Order By', () {
      expect(
        WindowFunctionExpression<int>(
          foo.sum(),
          orderBy: [OrderingTerm.asc(foo)],
        ),
        generates(
            "SUM(foo) OVER (ORDER BY foo ASC RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)"),
      );
    });

    test('with multiple Order By', () {
      expect(
        WindowFunctionExpression<int>(
          foo.sum(),
          orderBy: [OrderingTerm.asc(foo), OrderingTerm.desc(x)],
        ),
        generates(
            "SUM(foo) OVER (ORDER BY foo ASC, x DESC RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)"),
      );
    });

    test('with Partition By', () {
      expect(
        WindowFunctionExpression<double>(
          foo.avg(),
          orderBy: [OrderingTerm.desc(foo)],
          partitionBy: [x, y],
        ),
        generates(
            "AVG(foo) OVER (PARTITION BY x, y ORDER BY foo DESC RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)"),
      );
    });

    test('with Filter', () {
      expect(
        WindowFunctionExpression(
          countAll(filter: foo.isBiggerOrEqualValue(3)),
          orderBy: [OrderingTerm.desc(foo)],
          partitionBy: [x, y],
        ),
        generates(
            "COUNT(*) FILTER (WHERE foo >= ?) OVER (PARTITION BY x, y ORDER BY foo DESC RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)",
            [3]),
      );
    });

    test('does not allow empty Order By', () {
      expect(
          () => WindowFunctionExpression<double>(
                foo.avg(),
                orderBy: [],
              ),
          throwsA(isA<ArgumentError>()));
    });
  });

  group('WINDOW FUNCTION Frame Spec', () {
    test('between unbounded preceding and current row', () {
      expect(
        RowsFrameBoundary(),
        generates("ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW"),
      );
      expect(
        GroupsFrameBoundary(),
        generates("GROUPS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW"),
      );
      expect(
        RangeFrameBoundary(),
        generates("RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW"),
      );
    });

    test('between unbounded preceding and unbounded following', () {
      expect(
        RowsFrameBoundary(start: null, end: null),
        generates("ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING"),
      );
      expect(
        GroupsFrameBoundary(start: null, end: null),
        generates("GROUPS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING"),
      );
      expect(
        RangeFrameBoundary(start: null, end: null),
        generates("RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING"),
      );
    });

    test('between expr preceding and/or expr following', () {
      expect(
        RangeFrameBoundary(
          start: -2,
          end: 0,
        ),
        generates("RANGE BETWEEN 2 PRECEDING AND CURRENT ROW"),
      );
      expect(
        RowsFrameBoundary(
          start: -4,
          end: 6,
        ),
        generates("ROWS BETWEEN 4 PRECEDING AND 6 FOLLOWING"),
      );
      expect(
        GroupsFrameBoundary(
          start: null,
          end: -4,
        ),
        generates("GROUPS BETWEEN UNBOUNDED PRECEDING AND 4 PRECEDING"),
      );
      expect(
        RowsFrameBoundary(
          start: 0,
          end: null,
        ),
        generates("ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING"),
      );
      expect(
        RowsFrameBoundary(
          start: 6,
          end: null,
        ),
        generates("ROWS BETWEEN 6 FOLLOWING AND UNBOUNDED FOLLOWING"),
      );
    });

    test('allows reverse boundary of same type', () {
      expect(
        RangeFrameBoundary(
          start: -6,
          end: -1,
        ),
        generates("RANGE BETWEEN 6 PRECEDING AND 1 PRECEDING"),
      );

      expect(
        GroupsFrameBoundary(
          start: 4,
          end: 1,
        ),
        generates("GROUPS BETWEEN 4 FOLLOWING AND 1 FOLLOWING"),
      );
    });

    test(
        'does not allow reverse boundary of different type (start with FOLLOWING and end with PRECEDING or CURRENT ROW)',
        () {
      expect(
          () => RangeFrameBoundary(
                start: 6,
                end: 0,
              ),
          throwsA(isA<AssertionError>()));
      expect(
          () => RangeFrameBoundary(
                start: 6,
                end: -3,
              ),
          throwsA(isA<AssertionError>()));
    });

    test('Exclude boundary', () {
      expect(
        RangeFrameBoundary(
          exclude: FrameExclude.noOthers,
        ),
        generates(
            "RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW EXCLUDE NO OTHERS"),
      );
      expect(
        RowsFrameBoundary(
          exclude: FrameExclude.currentRow,
        ),
        generates(
            "ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW EXCLUDE CURRENT ROW"),
      );
      expect(
        GroupsFrameBoundary(
          exclude: FrameExclude.group,
        ),
        generates(
            "GROUPS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW EXCLUDE GROUP"),
      );
      expect(
        RangeFrameBoundary(
          exclude: FrameExclude.ties,
        ),
        generates(
            "RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW EXCLUDE TIES"),
      );
    });
  });
}
