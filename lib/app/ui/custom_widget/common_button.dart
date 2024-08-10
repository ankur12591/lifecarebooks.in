import 'package:flutter/material.dart';

import '../../../config/app_colors.dart';
import '../../../config/text_styles.dart';
import '../../../utils/ui_components.dart';

class CommonButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final bool? isSuffixArrowNeeded;
  final bool isColoredButton;
  final String? prefixIcon;
  final String? suffixIcon;
  final double width;
  final double verticalPadding;
  final Color? buttonBgColor;
  final Color? buttonTextColor;
  final Gradient? gradientColor;
  final bool? isGradientColor;
  final bool enabled;

  const CommonButton(
      {super.key,
      required this.title,
      required this.onTap,
      this.prefixIcon,
      this.isSuffixArrowNeeded,
      this.isColoredButton = false,
      this.verticalPadding = 14.0,
      this.width = double.infinity,
      this.suffixIcon,
      this.enabled = true,
      this.buttonBgColor,
      this.buttonTextColor,
      this.gradientColor,
      this.isGradientColor = true});

  @override
  Widget build(BuildContext context) {
    return UIComponent.customInkWellWidget(
        onTap: enabled
            ? onTap
            : isColoredButton
                ? onTap
                : null,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: enabled
                  ? isColoredButton
                  ? buttonBgColor ?? AppColors.white
                  : AppColors.colorPrimary
                  : AppColors.grey77,
              border: Border.all(
                  color: isColoredButton
                      ? AppColors.black2E
                      : AppColors.colorPrimary),
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: h16().copyWith(
                  fontWeight: FontWeight.w600,
                  color: isColoredButton ? buttonTextColor : AppColors.white),
            ),
          ),
        ));
  }
}
