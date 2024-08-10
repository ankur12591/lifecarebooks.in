import 'package:book_nest_life_care/utils/extensions.dart';
import 'package:book_nest_life_care/utils/ui_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../config/app_assets.dart';
import '../config/app_colors.dart';
import '../config/text_styles.dart';

class MyTextFormField extends StatefulWidget {
  const MyTextFormField({
    super.key,
    this.fieldName,
    this.fieldHint,
    this.fieldHintColor = AppColors.black2E,
    this.fieldNameColor = AppColors.black2E,
    this.borderColor = AppColors.greyBF,
    required this.controller,
    this.focusNode,
    this.suffixIcon,
    this.prefixIcon,
    required this.obscureText,
    required this.isMandatory,
    this.isDisable,
    required this.keyboardType,
    this.textInputAction,
    required this.readOnly,
    this.onTap,
    this.onChanged,
    this.onFieldSubmitted,
    this.validator,
    this.maxLines = 1,
    this.minLines = 1,
    this.isShowFieldName = true,
    this.fillColor = AppColors.white,
    this.textColor,
    this.textAlign = TextAlign.start,
    this.inputFormatters,
    this.maxLength,
    this.isVisibilityForLogin = false,
    this.contentPadding =
        const EdgeInsets.symmetric(vertical: 18.0, horizontal: 10.0),
  });

  final TextEditingController controller;
  final FocusNode? focusNode;
  final String? fieldName;
  final Color? fieldNameColor;
  final String? fieldHint;
  final Color? fieldHintColor;
  final Color? borderColor;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool obscureText;
  final TextInputType keyboardType;
  final TextInputAction? textInputAction;
  final bool isMandatory;
  final VoidCallback? onTap;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;
  final bool readOnly;
  final bool? isDisable;
  final String? Function(String?)? validator;
  final int? maxLines;
  final int minLines;
  final bool? isShowFieldName;
  final Color? fillColor;
  final Color? textColor;
  final TextAlign? textAlign;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLength;
  final bool? isVisibilityForLogin;
  final EdgeInsetsGeometry? contentPadding;

  @override
  State<MyTextFormField> createState() => _MyTextFormFieldState();
}

class _MyTextFormFieldState extends State<MyTextFormField> {
  bool _passwordVisible = false;

  @override
  void initState() {
    _passwordVisible = widget.obscureText;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.isShowFieldName == true
            ? RichText(
                text: TextSpan(
                    text: widget.fieldName ?? "",
                    style: h14().copyWith(
                        fontWeight: FontWeight.w600,
                        color: widget.fieldNameColor),
                    children: []))
            : Container(),
        8.verticalSpace,
        TextFormField(
            controller: widget.controller,
            cursorColor: AppColors.colorPrimary,
            style: h14().copyWith(
              color: widget.textColor,
            ),
            textInputAction: widget.textInputAction ?? null,
            onFieldSubmitted: widget.onFieldSubmitted,
            focusNode: widget.focusNode,
            inputFormatters: widget.inputFormatters ?? [],
            obscureText: widget.obscureText == true ? _passwordVisible : false,
            readOnly: widget.readOnly,
            enabled: widget.isDisable != null ? !widget.isDisable! : true,
            keyboardType: widget.keyboardType,
            onTap: widget.onTap,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            maxLines: widget.maxLines,
            minLines: widget.minLines,
            maxLength: widget.maxLength,
            textAlign: widget.textAlign!,
            validator: (String? value) {
              if (widget.isDisable ?? false) {
                return null;
              } else {
                return widget.validator!(value);
              }
            },
            onChanged: widget.onChanged,
            onTapOutside: (event) {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            decoration: InputDecoration(
              fillColor: widget.fillColor,
              filled: true,
              contentPadding: widget.contentPadding ??
                  const EdgeInsets.symmetric(vertical: 18.0, horizontal: 10.0),
              floatingLabelBehavior:
                  widget.readOnly == true && widget.controller.text.isEmpty
                      ? FloatingLabelBehavior.never
                      : FloatingLabelBehavior.auto,
              hintText: widget.fieldHint ?? "",
              hintStyle: h14().copyWith(color: widget.fieldHintColor),
              suffixIconConstraints:
                  const BoxConstraints(maxHeight: 100, maxWidth: 100),
              prefixIconConstraints:
                  const BoxConstraints(maxHeight: 100, maxWidth: 100),
              prefixIcon: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: widget.prefixIcon != null ? 12 : 10),
                child: widget.prefixIcon,
              ),
              suffixIcon: UIComponent.customInkWellWidget(
                onTap: () {
                  setState(() {
                    _passwordVisible = !_passwordVisible;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 18.0),
                  child: widget.obscureText == true &&
                          widget.isVisibilityForLogin == true
                      ? SizedBox(
                          width: 16,
                          height: 16,
                          child: _passwordVisible
                              ? SVGAssets.visibilityOffBlueIcon.toSvg
                              : SVGAssets.visibilityOnBlueIcon.toSvg)
                      : widget.obscureText == true &&
                              widget.isVisibilityForLogin == false
                          ? SizedBox(
                              width: 16,
                              height: 16,
                              child: _passwordVisible
                                  ? SVGAssets.visibilityOffBlackIcon.toSvg
                                  : SVGAssets.visibilityOnBlackIcon.toSvg)
                          : widget.suffixIcon,
                ),
              ),
              errorMaxLines: 3,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                    color: widget.borderColor ?? AppColors.greyBF, width: 1),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                    color: widget.borderColor ?? AppColors.greyBF, width: 1),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                    color: widget.borderColor ?? AppColors.greyBF, width: 1),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                    color: widget.borderColor ?? AppColors.errorColor,
                    width: 1),
              ),
            )
            // TextStyle(color: AppColors.labelColor,)),
            ),
      ],
    );
  }
}
