import 'package:flutter/material.dart';

import '../../theme/app_theme.dart';
import '../general/maybe_text.dart';

class WrappedTextDescription<T extends Object> extends StatelessWidget {
  const WrappedTextDescription({
    this.first,
    this.firstLabel,
    this.last,
    this.lastLabel,
    this.second,
    this.secondLabel,
    super.key,
  });

  final T? first;
  final T? second;
  final T? last;

  final String? firstLabel;
  final String? secondLabel;
  final String? lastLabel;

  @override
  Widget build(BuildContext context) => Wrap(
    crossAxisAlignment: WrapCrossAlignment.center,
    children: [
      MaybeText(first, andWith: firstLabel),
      if (second != null) MaybeText(second, andWith: secondLabel),
      if (first != null && last != null)
        const SizedBox(
          height: AppTheme.size - 2,
          child: VerticalDivider(color: Colors.grey, width: AppTheme.size / 2),
        ),
      MaybeText(last, andWith: lastLabel),
    ],
  );
}
