import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../configs/configs.dart';

class CustomTextField extends StatefulWidget {
  final String name;
  final TextEditingController? controller;
  final String? hint;
  final String? label;
  final bool? isPass;
  final bool? enabled;
  final bool required;
  final double? width;
  final double? height;
  final bool noUnderline;
  final bool? autoFocus;
  final FocusNode? node;

  final Widget? prefixIcon;
  final bool? isSuffixIcon;
  final String? initialValue;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final TextCapitalization textCapitalization;

  final bool elevated;
  final int maxLines;
  final String? errorText;
  final String? Function(String?)? validators;
  final String? Function(String?)? onChanged;
  final List<TextInputFormatter>? inputformatters;

  const CustomTextField({
    Key? key,
    this.elevated = false,
    this.node,
    this.enabled,
    this.errorText,
    this.autoFocus,
    this.prefixIcon,
    this.onChanged,
    this.initialValue,
    this.validators,
    required this.name,
    this.controller,
    this.hint = "",
    this.isPass = false,
    this.isSuffixIcon = false,
    this.textInputType = TextInputType.text,
    this.inputformatters,
    this.width = double.infinity,
    this.height = 50,
    this.textInputAction = TextInputAction.done,
    this.textCapitalization = TextCapitalization.sentences,
    this.required = false,
    this.noUnderline = false,
    this.maxLines = 1,
    this.label,
  }) : super(key: key);

  @override
  CustomTextFieldState createState() => CustomTextFieldState();
}

class CustomTextFieldState extends State<CustomTextField> {
  bool show = false;

  @override
  void initState() {
    show = widget.isPass!;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(428, 926));

    return FormBuilderTextField(
      controller: widget.controller,
      inputFormatters: widget.inputformatters,
      textAlignVertical: TextAlignVertical.top,
      textCapitalization: widget.textCapitalization,
      enabled: widget.enabled ?? true,
      initialValue: widget.initialValue,
      name: widget.name,
      autofocus: widget.autoFocus ?? false,
      textInputAction: widget.textInputAction,
      keyboardType: widget.textInputType,
      focusNode: widget.node,
      obscureText: show,
      maxLines: widget.maxLines,
      validator: widget.validators,
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          horizontal: AppDimensions.normalize(4),
          vertical: AppDimensions.normalize(6.5),
        ),
        constraints: BoxConstraints(
          minHeight: widget.height ?? AppDimensions.normalize(22.5),
          maxHeight: AppDimensions.normalize(30),
          minWidth: widget.width!,
          maxWidth: double.infinity,
        ),
        hoverColor: Colors.transparent,
        prefixIcon: widget.isSuffixIcon!
            ? null
            : widget.prefixIcon != null
                ? Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      widget.prefixIcon!,
                      if (widget.required)
                        Text(
                          "*",
                          textAlign: TextAlign.start,
                          style: AppText.b3.cl(AppTheme.c.accent),
                        ),
                      const Text(
                        ": ",
                        textAlign: TextAlign.center,
                      ),
                      Space.xf(3),
                    ],
                  )
                : null,
        prefixIconConstraints: const BoxConstraints(
          maxHeight: 20,
        ),
        suffixIcon: widget.isPass!
            ? IconButton(
                splashRadius: AppDimensions.normalize(8),
                onPressed: () {
                  setState(() {
                    show = !show;
                  });
                },
                icon: Icon(
                  show ? Icons.visibility_off : Icons.visibility,
                  size: AppDimensions.normalize(7),
                ),
              )
            : null,
        filled: true,
        fillColor: const Color(0xffE8F3F7),
        hintText: widget.hint,
        hintStyle: AppText.b3.cl(Colors.black),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDimensions.normalize(3)),
          borderSide: BorderSide.none,
        ),
        enabledBorder: widget.noUnderline
            ? OutlineInputBorder(
                gapPadding: 0,
                borderRadius: BorderRadius.circular(AppDimensions.normalize(3)),
                borderSide: BorderSide(
                  color: const Color(0xFF9E9E9E).withOpacity(0.1),
                ),
              )
            : UnderlineInputBorder(
                borderRadius: BorderRadius.circular(AppDimensions.normalize(3)),
                borderSide: BorderSide(
                  color: const Color(0xFF9E9E9E).withOpacity(0.1),
                ),
              ),
        focusedBorder: widget.noUnderline
            ? OutlineInputBorder(
                gapPadding: 0,
                borderRadius: BorderRadius.circular(AppDimensions.normalize(3)),
                borderSide: BorderSide(
                  width: AppDimensions.normalize(0.75),
                  color: AppTheme.c.primary,
                ),
              )
            : UnderlineInputBorder(
                borderRadius: BorderRadius.circular(AppDimensions.normalize(3)),
                borderSide: BorderSide(
                  color: AppTheme.c.primary,
                  width: AppDimensions.normalize(0.75),
                ),
              ),
        errorBorder: widget.noUnderline
            ? OutlineInputBorder(
                borderRadius: BorderRadius.circular(AppDimensions.normalize(3)),
                borderSide: BorderSide(
                  color: Colors.red.withAlpha(200),
                  width: AppDimensions.normalize(0.75),
                ),
              )
            : UnderlineInputBorder(
                borderRadius: BorderRadius.circular(AppDimensions.normalize(3)),
                borderSide: BorderSide(
                  color: Colors.red.withAlpha(200),
                  width: AppDimensions.normalize(0.75),
                ),
              ),
        focusedErrorBorder: widget.noUnderline
            ? OutlineInputBorder(
                borderRadius: BorderRadius.circular(AppDimensions.normalize(3)),
                borderSide: BorderSide(
                  color: Colors.red.withAlpha(200),
                  width: AppDimensions.normalize(0.75),
                ),
              )
            : UnderlineInputBorder(
                borderRadius: BorderRadius.circular(AppDimensions.normalize(3)),
                borderSide: BorderSide(
                  color: Colors.red.withAlpha(200),
                  width: AppDimensions.normalize(0.75),
                ),
              ),
        disabledBorder: widget.noUnderline
            ? OutlineInputBorder(
                borderRadius: BorderRadius.circular(AppDimensions.normalize(3)),
                borderSide: BorderSide(
                  width: AppDimensions.normalize(0.75),
                  color: AppTheme.c.textSub!.withAlpha(100),
                ),
              )
            : UnderlineInputBorder(
                borderRadius: BorderRadius.circular(AppDimensions.normalize(3)),
                borderSide: BorderSide(
                  width: AppDimensions.normalize(0.75),
                  color: AppTheme.c.textSub!.withAlpha(100),
                ),
              ),
      ),
    );
  }
}
