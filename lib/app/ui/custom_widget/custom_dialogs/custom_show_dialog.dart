import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:book_nest_life_care/config/app_assets.dart';
import 'package:book_nest_life_care/config/app_colors.dart';
import 'package:book_nest_life_care/config/text_styles.dart';
import 'package:book_nest_life_care/utils/extensions.dart';
import 'package:book_nest_life_care/utils/ui_components.dart';

class CustomShowDialog extends StatelessWidget {
  const CustomShowDialog({
    super.key,
    required this.titleHeading,
    required this.childWidget,
  });

  final String titleHeading;
  final Widget childWidget;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 14),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14.0),
      ),
      child: Container(
        padding: const EdgeInsets.only(top: 14, bottom: 20.0),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    titleHeading,
                    textAlign: TextAlign.center,
                    style: h20(
                        fontWeight: FontWeight.w600, color: AppColors.black),
                  ),
                  UIComponent.customInkWellWidget(
                      onTap: () {
                        context.pop();
                      },
                      child: SVGAssets.closeIcon.toSvg),
                ],
              ),
              24.0.verticalSpace,
              childWidget,
            ],
          ),
        ),
      ),
    );
  }
}
