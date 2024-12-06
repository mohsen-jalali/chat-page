import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gamer_tag/src/presentation/ui/widgets/icon_widget.dart';
import 'package:gamer_tag/src/presentation/utils/extenstions/context_extensions.dart';

class CustomTextField extends StatefulWidget {
  final String? errorText;
  final String? label;
  final String? hintText;
  final TextInputType? textInputType;
  final bool isObscure;
  final EdgeInsets? padding;
  final ValueChanged? onChanged;
  final VoidCallback? onTap;
  final TextEditingController? controller;
  final bool readOnly;
  final List<TextInputFormatter>? inputFormatters;
  final String? initValue;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;
  final Color? backgroundColor;
  final int? maxLines;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool? autofocus;
  final int? maxLength;
  final FocusNode? focusNode;
  final TextStyle? labelStyle;
  final double borderRadius;
  final Color? borderColor;
  final BorderRadius? customBorderRadius;
  final bool hasClearButton;
  final String? Function(String?)? validator;

  const CustomTextField({
    super.key,
    this.focusNode,
    this.textInputType,
    this.errorText,
    this.isObscure = false,
    this.autofocus,
    this.onChanged,
    this.onTap,
    this.prefixIcon,
    this.initValue,
    this.maxLines = 1,
    this.hintStyle,
    this.suffixIcon,
    this.backgroundColor,
    this.textStyle,
    this.padding,
    this.readOnly = false,
    this.controller,
    this.hintText,
    this.inputFormatters,
    this.maxLength,
    this.label,
    this.labelStyle,
    this.borderRadius = 1000,
    this.borderColor,
    this.customBorderRadius,
    this.hasClearButton = true,
    this.validator,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late TextEditingController controller;
  late FocusNode _focusNode;
  bool _isTextVisible = false;

  @override
  void initState() {
    controller = widget.controller ?? TextEditingController();
    if (widget.initValue != null) {
      (controller
        ..text = widget.initValue!
        ..selection =
            TextSelection.collapsed(offset: widget.initValue!.length));
    }
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      if (!_focusNode.hasFocus) {
        // Validate when focus is lost
        if (widget.validator != null) {
          setState(() {}); // Trigger a re-build to show the validation message
        }
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: widget.autofocus ?? false,
      readOnly: widget.readOnly,
      focusNode: widget.focusNode,
      controller: controller,
      validator: widget.validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      style: widget.textStyle ??
          context.textTheme.bodyLarge!.copyWith(
            color: context.colorScheme.surfaceContainer,
            fontWeight: FontWeight.w400,
          ),
      scribbleEnabled: true,
      expands: false,
      minLines: null,
      maxLines: widget.maxLines,
      maxLength: widget.maxLength,
      keyboardType: widget.maxLines == null
          ? TextInputType.multiline
          : widget.textInputType,
      obscureText: _isTextVisible,
      scrollPadding: EdgeInsets.zero,
      textAlignVertical: TextAlignVertical.center,
      inputFormatters: widget.inputFormatters,
      cursorColor: Theme.of(context).textSelectionTheme.cursorColor,
      decoration: InputDecoration(
        isDense: false,
        contentPadding: widget.padding ??
            const EdgeInsets.symmetric(horizontal: 14, vertical: 0),
        fillColor: widget.backgroundColor,
        filled: widget.backgroundColor != null,
        hoverColor: Colors.white,
        counterText: "",
        suffixIcon: suffixIcon(),
        prefixIcon: widget.prefixIcon,
        enabledBorder: _getEnabledBorder(context),
        focusedBorder: _getFocusedBorder(context),
        border: _getEnabledBorder(context),
        hintStyle: context.textTheme.bodyLarge!
            .copyWith(fontSize: 16, color: context.colorScheme.surfaceContainer.withOpacity(0.6))
            .merge(widget.hintStyle),
        labelText: widget.label,
        hintText: widget.hintText,
      ),
      onChanged: (value) {
        widget.onChanged?.call(value);
        setState(() {});
      },
      onTap: () {
        widget.onTap?.call();
        if (controller.selection ==
            TextSelection.fromPosition(
                TextPosition(offset: controller.text.length - 1))) {
          setState(() {
            controller.selection = TextSelection.fromPosition(
                TextPosition(offset: controller.text.length));
          });
        }
      },
    );
  }

  InputBorder _getErrorBorder(BuildContext context) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(widget.borderRadius),
      ),
      borderSide: BorderSide(
        color: Theme.of(context).colorScheme.error,
      ),
    );
  }

  InputBorder _getEnabledBorder(BuildContext context) {
    if (widget.errorText != null) {
      return _getErrorBorder(context);
    }
    return OutlineInputBorder(
      borderRadius: widget.customBorderRadius ??
          BorderRadius.all(
            Radius.circular(widget.borderRadius),
          ),
      borderSide: BorderSide(
        color: widget.borderColor ?? Colors.transparent,
      ),
    );
  }

  InputBorder _getFocusedBorder(BuildContext context) {
    return OutlineInputBorder(
      borderRadius: widget.customBorderRadius ??
          BorderRadius.all(
            Radius.circular(widget.borderRadius),
          ),
      borderSide: BorderSide(
        color: widget.borderColor ?? Colors.transparent,
      ),
    );
  }

  Widget? suffixIcon() {
    if (widget.suffixIcon != null) {
      return widget.suffixIcon!;
    }
    if (widget.isObscure) {
      return IconWidget(
        icon: !_isTextVisible
            ? Icons.visibility_off_outlined
            : Icons.visibility_outlined,
        iconColor: Colors.black,
        size: 18,
        onPressed: () {
          setState(() {
            _isTextVisible = !_isTextVisible;
          });
        },
      );
    }
    if (controller.text.isNotEmpty &&
        widget.readOnly == false &&
        widget.hasClearButton) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 28,
            width: 28,
            child: IconWidget(
              icon: Icons.close,
              iconColor: Theme.of(context).colorScheme.tertiary,
              height: 28,
              onPressed: () {
                controller.clear();
                setState(() {});
                widget.onChanged?.call("");
              },
              width: 28,
            ),
          ),
        ],
      );
    }
    return null;
  }
}
