import 'package:book_nest_life_care/config/app_colors.dart';
import 'package:book_nest_life_care/config/text_styles.dart';
import 'package:book_nest_life_care/utils/extensions.dart';
import 'package:flutter/material.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog(
      {super.key,
      required this.onNegativePressed,
      required this.onPositivePressed,
      required this.titleHeading,
      required this.titleMsg,
      required this.onNegativeButtonText,
      required this.onPositiveButtonText,
      this.positiveButtonTextStyle});

  final Function onNegativePressed;
  final Function onPositivePressed;
  final String titleMsg;
  final String titleHeading;
  final String onNegativeButtonText;
  final String onPositiveButtonText;
  final TextStyle? positiveButtonTextStyle;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14.0),
      ),
      child: Container(
        padding: const EdgeInsets.only(top: 12, bottom: 20.0),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              18.verticalSpace,
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    titleHeading,
                    textAlign: TextAlign.center,
                    style: h22(
                        fontWeight: FontWeight.w600, color: AppColors.black),
                  ),
                ),
              ),
              16.0.verticalSpace,Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    titleMsg,
                    textAlign: TextAlign.center,
                    style: h16(
                        fontWeight: FontWeight.w400, color: AppColors.black),
                  ),
                ),
              ),
              16.0.verticalSpace,
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 6.0, right: 6.0), // Half of the space between buttons on the right
                      child: TextButton(
                        onPressed: () => onPositivePressed(),
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 0),
                          backgroundColor: AppColors.colorPrimary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          onPositiveButtonText,
                          style: positiveButtonTextStyle ??
                              h14().copyWith(
                                fontWeight: FontWeight.w500,
                                color: AppColors.white,
                              ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 6.0, left: 6.0), // Half of the space between buttons on the left
                      child: TextButton(
                        onPressed: () => onNegativePressed(),
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 0),
                          backgroundColor: AppColors.white, // Replace with your cancel button color from image (e.g., Color(0xFF...)),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          side: const BorderSide(color: AppColors.black11),
                        ),
                        child: Text(
                          onNegativeButtonText,
                          style: h14().copyWith(
                            color: AppColors.black2E,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
