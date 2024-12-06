import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gamer_tag/src/presentation/ui/widgets/skeleton_widget.dart';

enum ImageType { asset, file, network }

class ImageWidget extends StatelessWidget {
  final String imageUrl;
  final ImageType? imageType;
  final BoxShape boxShape;
  final BoxFit? boxFit;
  final double? height;
  final double? width;
  final double? borderRadius;
  final BorderRadius? customRadius;
  final VoidCallback? onTap;
  final bool hasTag;
  final Widget? tagWidget;
  final Alignment? tagAlignment;
  final bool hasGradient;
  final Widget? placeHolder;
  final BoxBorder? border;
  final Color? backgroundColor;
  final bool hasLoadingPlaceHolder;

  const ImageWidget({
    Key? key,
    required this.imageUrl,
    this.imageType,
    this.boxShape = BoxShape.rectangle,
    this.height,
    this.width,
    this.boxFit = BoxFit.cover,
    this.borderRadius,
    this.onTap,
    this.hasTag = false,
    this.tagWidget,
    this.tagAlignment,
    this.hasGradient = false,
    this.placeHolder,
    this.border,
    this.backgroundColor,
    this.customRadius,
    this.hasLoadingPlaceHolder = true,
  }) : super(key: key);

  const ImageWidget.fromAsset({
    Key? key,
    required this.imageUrl,
    this.boxShape = BoxShape.rectangle,
    this.height,
    this.width,
    this.boxFit = BoxFit.cover,
    this.borderRadius,
    this.onTap,
    this.hasTag = false,
    this.tagWidget,
    this.tagAlignment,
    this.hasGradient = false,
    this.placeHolder,
    this.border,
    this.backgroundColor,
    this.customRadius,
    this.hasLoadingPlaceHolder = false,
  })
      : imageType = ImageType.asset,
        super(key: key);

  const ImageWidget.fromNetwork({
    Key? key,
    required this.imageUrl,
    this.boxShape = BoxShape.rectangle,
    this.height,
    this.width,
    this.boxFit = BoxFit.cover,
    this.borderRadius,
    this.onTap,
    this.hasTag = false,
    this.tagWidget,
    this.tagAlignment,
    this.hasGradient = false,
    this.placeHolder,
    this.border,
    this.backgroundColor,
    this.customRadius,
    this.hasLoadingPlaceHolder = true,
  })
      : imageType = ImageType.network,
        super(key: key);

  const ImageWidget.fromFile({
    Key? key,
    required this.imageUrl,
    this.boxShape = BoxShape.rectangle,
    this.height,
    this.width,
    this.boxFit = BoxFit.cover,
    this.borderRadius,
    this.onTap,
    this.hasTag = false,
    this.tagWidget,
    this.tagAlignment,
    this.hasGradient = false,
    this.placeHolder,
    this.border,
    this.backgroundColor,
    this.customRadius,
    this.hasLoadingPlaceHolder = false,
  })
      : imageType = ImageType.file,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: GestureDetector(
        onTap: onTap,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Positioned.fill(
              child: Container(
                clipBehavior: Clip.hardEdge,
                decoration: boxShape != BoxShape.circle ? BoxDecoration(
                  color: backgroundColor,
                  borderRadius: customRadius ??
                      BorderRadius.circular(borderRadius ?? 0),
                ) : BoxDecoration(
                  color: backgroundColor,
                  borderRadius: boxShape == BoxShape.circle
                      ? null
                      : customRadius ??
                      BorderRadius.circular(borderRadius ?? 0),
                  shape: boxShape,
                  border: border,
                ),
                child: Builder(
                  builder: (context) {
                    switch (type) {
                      case ImageType.asset:
                        if (imageUrl.isEmpty) {
                          return _errorWidget(context);
                        }
                        if (_isSvg(imageUrl)) {
                          return SvgPicture.asset(
                            imageUrl,
                            fit: boxFit ?? BoxFit.contain,
                            width: width,
                            height: height,
                          );
                        }
                        return Image.asset(
                          imageUrl,
                          fit: boxFit,
                          width: width,
                          height: height,
                          errorBuilder: (context, error, stackTrace) =>
                              _errorWidget(context),
                        );
                      case ImageType.file:
                        if (imageUrl.isEmpty) {
                          return _errorWidget(context);
                        }
                        return Image.file(
                          File(imageUrl),
                          fit: boxFit,
                          width: width,
                          height: height,
                          errorBuilder: (context, error, stackTrace) =>
                              _errorWidget(context),
                        );
                      case ImageType.network:
                        if (imageUrl.isEmpty) {
                          return _errorWidget(context);
                        }
                        return Container(
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                            shape: boxShape,
                            borderRadius: boxShape == BoxShape.circle
                                ? null
                                : customRadius ??
                                BorderRadius.circular(borderRadius ?? 0),
                          ),
                          child: CachedNetworkImage(
                            imageUrl: imageUrl,
                            fit: boxFit,
                            errorWidget: (context, url, error) =>
                                _errorWidget(context),
                            height: height,
                            width: width,
                            placeholder: (context, url) =>
                            boxShape == BoxShape.circle
                                ? SkeletonWidget.circular(
                              width: width ?? 50,
                              height: height ?? 50,
                            )
                                : SkeletonWidget.rectangular(
                              width: width ?? 50,
                              height: height ?? 50,
                            ),
                          ),
                        );
                    }
                  },
                ),
              ),
            ),
            if (hasTag && tagWidget != null)
              Align(
                alignment: tagAlignment ?? Alignment.bottomRight,
                child: tagWidget!,
              )
          ],
        ),
      ),
    );
  }

  bool _isSvg(String imageUrl) {
    if (imageUrl.contains(".svg")) {
      return true;
    }
    return false;
  }

  ImageType get type {
    if (imageType != null) return imageType!;
    if (imageUrl.startsWith("http") || kIsWeb) {
      return ImageType.network;
    } else if (imageUrl.startsWith("assets")) {
      return ImageType.asset;
    }
    return ImageType.file;
  }

  Widget _errorWidget(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Color(0xff65C9FF),
        shape: boxShape,
        borderRadius: boxShape == BoxShape.circle
            ? null
            : customRadius ?? BorderRadius.circular(borderRadius ?? 0),
      ),
      // child: placeHolder ?? SvgPicture.asset(Assets.userAvatar),
    );
  }
}
