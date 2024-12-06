import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gamer_tag/src/presentation/utils/extenstions/context_extensions.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextOverflow? overflow;
  final int? maxLines;
  final bool? softWrap;
  final TextStyle? additionalStyle;
  final TextAlign? textAlign;
  final TextDirection? direction;
  final StrutStyle? strutStyle;
  final BuildContext context;
  final double? minFontSize;
  final double? maxFontSize;

  const TextWidget(
    this.text, {
    super.key,
    required this.context,
    this.overflow,
    this.maxLines,
    this.textAlign,
    this.additionalStyle,
    this.softWrap,
    this.strutStyle,
    this.direction,
    this.style,
    this.minFontSize,
    this.maxFontSize,
  });

  TextWidget.extraBlack(
      this.text, {
        super.key,
        required this.context,
        this.overflow,
        this.maxLines,
        this.textAlign,
        this.additionalStyle,
        this.softWrap,
        this.strutStyle,
        this.direction,
        this.minFontSize,
        this.maxFontSize,
      })  : style = context.textTheme.titleLarge!.merge(additionalStyle);

  TextWidget.black(
      this.text, {
        super.key,
        required this.context,
        this.overflow,
        this.maxLines,
        this.textAlign,
        this.additionalStyle,
        this.softWrap,
        this.strutStyle,
        this.direction,
        this.minFontSize,
        this.maxFontSize,
      })  : style = context.textTheme.titleLarge!.merge(additionalStyle);

  TextWidget.bold(
    this.text, {
    super.key,
    required this.context,
    this.overflow,
    this.maxLines,
    this.textAlign,
    this.additionalStyle,
    this.softWrap,
    this.strutStyle,
    this.direction,
    this.minFontSize,
    this.maxFontSize,
  })  : style = context.textTheme.labelLarge!.merge(additionalStyle);

  TextWidget.semiBold(
    this.text, {
    super.key,
    required this.context,
    this.overflow,
    this.maxLines,
    this.textAlign,
    this.additionalStyle,
    this.softWrap,
    this.strutStyle,
    this.direction,
    this.minFontSize,
    this.maxFontSize,
  })  : style = context.textTheme.titleLarge!
            .merge(const TextStyle(fontWeight: FontWeight.w500))
            .merge(additionalStyle);

  TextWidget.medium(
    this.text, {
    super.key,
    required this.context,
    this.overflow,
    this.maxLines,
    this.textAlign,
    this.additionalStyle,
    this.softWrap,
    this.strutStyle,
    this.direction,
    this.minFontSize,
    this.maxFontSize,
  })  : style = context.textTheme.labelMedium!
            .merge(const TextStyle(fontWeight: FontWeight.w400))
            .merge(additionalStyle);

  TextWidget.regular(
    this.text, {
    super.key,
    required this.context,
    this.overflow,
    this.maxLines,
    this.textAlign,
    this.additionalStyle,
    this.softWrap,
    this.strutStyle,
    this.direction,
    this.minFontSize,
    this.maxFontSize,
  })  : style = context.textTheme.bodyLarge!
            .merge(const TextStyle(fontWeight: FontWeight.w400))
            .merge(additionalStyle);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      style: style,
      overflow: overflow,
      strutStyle: strutStyle,
      maxLines: maxLines,
      softWrap: softWrap,
      textAlign: textAlign,
      textDirection: direction,
      minFontSize: minFontSize ?? 12,
      maxFontSize: maxFontSize ?? double.infinity,
    );
  }
}
