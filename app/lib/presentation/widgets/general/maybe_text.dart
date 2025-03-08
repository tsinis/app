import 'package:flutter/widgets.dart' show Text, TextSpan;

/// A text widget that displays a string of text with an optional null safety
/// check.
///
/// If the provided `text` is null, this widget will simply not render any text.
/// Otherwise, it behaves exactly like a [Text] widget displaying the provided
/// text. It inherits all text styling and layout properties from the superclass
/// [Text].
///
/// This widget is useful in scenarios where text content is optional and you
/// want to avoid boilerplate null checking.
///
/// Example usage:
/// ```dart
/// MaybeText(
///   nullableString,
///   style: TextStyle(color: Colors.blue),
///   textAlign: TextAlign.center,
/// )
/// ```
///
/// See also:
///
///  * [Text], the widget that [MaybeText] extends, which contains detailed
///    information about styling, aligning, and controlling the rendering of
///    text.
///  * [TextSpan], which is used internally to provide the text content for this
///    widget.
class MaybeText extends Text {
  MaybeText(
    Object? value, {
    String? andWith,
    super.key,
    super.locale,
    super.maxLines,
    super.overflow,
    super.selectionColor,
    super.semanticsLabel,
    super.softWrap,
    super.strutStyle,
    super.style,
    super.textAlign,
    super.textDirection,
    super.textHeightBehavior,
    super.textScaler,
    super.textWidthBasis,
  }) : super.rich(TextSpan(text: _createText(andWith, value)));

  static String? _createText(String? andWith, Object? value) {
    if (value == null) return null;
    if (andWith == null || andWith.isEmpty) return value.toString();

    return '$value $andWith';
  }
}
