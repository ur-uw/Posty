part of '../wizard_widgets.dart';

Widget text(
  String text, {
  double? fontSize,
  Color? color,
  String? fontFamily,
  FontWeight? fontWeight,
  TextAlign? textAlign,
  TextDirection? textDirection,
  double? lineHeight,
  double? letterSpacing,
  double? wordSpacing,
  TextStyle? textStyle,
  TextBaseline? baseline,
}) {
  if (kIsWeb) {
    return SelectableText(
      text,
      textAlign: textAlign,
      textDirection: textDirection ?? TextDirection.rtl,
      style: textStyle ??
          TextStyle(
            fontSize: fontSize,
            color: color,
            fontFamily: fontFamily,
            fontWeight: fontWeight,
            letterSpacing: letterSpacing,
            height: lineHeight,
            textBaseline: baseline,
            wordSpacing: wordSpacing,
          ),
    );
  }

  return Text(
    text,
    textAlign: textAlign,
    textDirection: textDirection ?? TextDirection.rtl,
    style: textStyle ??
        TextStyle(
          fontSize: fontSize,
          color: color,
          fontFamily: fontFamily,
          fontWeight: fontWeight,
          letterSpacing: letterSpacing,
          height: lineHeight,
          textBaseline: baseline,
          wordSpacing: wordSpacing,
        ),
  );
}
