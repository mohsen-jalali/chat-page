import 'package:flutter/material.dart';
import 'package:gamer_tag/src/presentation/utils/extenstions/context_extensions.dart';
import 'package:skeleton_text/skeleton_text.dart';

class SkeletonWidget extends StatelessWidget {
  final double height;
  final double width;
  final BoxShape shape;
  final double? borderRadius;

  const SkeletonWidget.rectangular({
    super.key,
    required this.width,
    required this.height,
    this.borderRadius = 8,
  }) : shape = BoxShape.rectangle;

  const SkeletonWidget.circular({
    super.key,
    required this.width,
    required this.height,
  })  : shape = BoxShape.circle,
        borderRadius = null;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        shape: shape,
        borderRadius: shape == BoxShape.circle
            ? null
            : BorderRadius.all(Radius.circular(borderRadius!)),
        color: context.colorScheme.tertiaryContainer,
      ),
      child: SkeletonAnimation(
        shimmerColor: context.colorScheme.onSurface,
        shimmerDuration: 1500,
        gradientColor: context.colorScheme.tertiaryContainer,
        borderRadius: shape == BoxShape.circle
            ? const BorderRadius.all(Radius.circular(100))
            : const BorderRadius.all(Radius.circular(10)),
        child: const SizedBox(),
      ),
    );
  }
}
