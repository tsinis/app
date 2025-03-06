import 'package:app/main.dart';
import 'package:app/presentation/pages/overview_screen.dart';
import 'package:app/router/app_router.dart';
import 'package:app/router/initialization_guard.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('$OverviewScreen is present on app start', (tester) async {
    await tester.pumpWidget(Main(AppRouter(const InitializationGuard())));
    await tester.pumpAndSettle();
    expect(find.byType(OverviewScreen), findsOneWidget);
  });
}
