import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../config/app_colors.dart';
import '../../../config/text_styles.dart';
import '../../../utils/ui_components.dart';


class SearchTextFormField extends StatefulWidget {
  const SearchTextFormField(
      {super.key,
      this.fieldName,
      this.fieldHint,
      this.fieldHintColor,
      required this.controller,
      this.focusNode,
      this.suffixIcon,
      this.prefixIcon,
      required this.keyboardType,
      this.textInputAction,
      this.onTap,
      this.onChanged,
      this.onSubmitted,
      this.onFieldSubmitted,
      this.functionSuffix,
      this.maxLines = 1,
      this.minLines = 1,
      this.isShowFieldName = true,
      this.showSuffixIcon = false,
      this.readOnly = false,
      this.inputFormatters});

  final TextEditingController controller;
  final FocusNode? focusNode;
  final String? fieldName;
  final String? fieldHint;
  final Color? fieldHintColor;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextInputType keyboardType;
  final TextInputAction? textInputAction;
  final bool? readOnly;
  final VoidCallback? onTap;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;

  final Function()? functionSuffix;

  // final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;
  final int? maxLines;
  final int minLines;
  final bool showSuffixIcon;
  final bool? isShowFieldName;
  final List<TextInputFormatter>? inputFormatters;

  @override
  State<SearchTextFormField> createState() => _SearchFormFieldState();
}

class _SearchFormFieldState extends State<SearchTextFormField> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      cursorColor: AppColors.colorPrimary,
      style: h14(),
      textInputAction: widget.textInputAction,
      focusNode: widget.focusNode,
      inputFormatters: widget.inputFormatters ?? [],
      keyboardType: widget.keyboardType,
      onTap: widget.onTap,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      maxLines: widget.maxLines,
      minLines: widget.minLines,
      readOnly: widget.readOnly ?? false,
      onChanged: (value) => widget.onChanged!(value),
      onFieldSubmitted: (value) => widget.onSubmitted!(value),
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      decoration: InputDecoration(
        fillColor: AppColors.white,
        suffixIcon: widget.showSuffixIcon
            ? UIComponent.customInkWellWidget(
                onTap: widget.functionSuffix ?? () {},
                child: Padding(
                  padding: const EdgeInsets.only(right: 13.0),
                  child: widget.suffixIcon,
                ),
              )
            : const SizedBox(),
        suffixIconConstraints:
            const BoxConstraints( minHeight: 16,
                minWidth: 16,maxHeight: 100, maxWidth: 100),
        prefixIconConstraints:
            const BoxConstraints(maxHeight: 100, maxWidth: 100),
        prefixIcon: UIComponent.customInkWellWidget(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 14),
            child: widget.prefixIcon,
          ),
        ),
        hintText: widget.fieldHint,
        hintStyle: h14()
            .copyWith(color: widget.fieldHintColor ?? AppColors.grey88),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 18.0, horizontal: 16.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: AppColors.greyBF, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: AppColors.greyBF, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: AppColors.greyBF, width: 1),
        ),
      ),
      // TextStyle(color: AppColors.labelColor,)),
    );
  }
}
