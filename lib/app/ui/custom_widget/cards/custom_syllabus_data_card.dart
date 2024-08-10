import 'package:book_nest_life_care/app/ui/custom_widget/common_button.dart';
import 'package:book_nest_life_care/config/app_assets.dart';
import 'package:book_nest_life_care/config/app_colors.dart';
import 'package:book_nest_life_care/config/text_styles.dart';
import 'package:book_nest_life_care/utils/extensions.dart';
import 'package:book_nest_life_care/utils/ui_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSyllabusDataCard extends StatefulWidget {
  final String? grade;
  final String? section;
  final String? organizationSubject;
  final String? btnTitle;
  final String? location;

  final String? logo;
  final String? status;
  final bool isProjectDetails;
  final bool isClientProfile;
  final bool isEditDeleteEnabled;
  final bool isForDesigner;
  final bool isSaved;
  final VoidCallback? onTapEdit;
  final VoidCallback? onTapDelete;
  final VoidCallback? onTapViewSyllabus;
  final VoidCallback? onTapFav;

  const CustomSyllabusDataCard({
    super.key,
    this.grade,
    this.section,
    this.organizationSubject,
    this.btnTitle,
    this.location,
    this.logo,
    this.status,
    this.onTapDelete,
    this.onTapEdit,
    this.isForDesigner = false,
    this.isProjectDetails = false,
    this.isClientProfile = false,
    this.isEditDeleteEnabled = false,
    this.isSaved = false,
    this.onTapViewSyllabus,
    this.onTapFav,
  });

  @override
  State<CustomSyllabusDataCard> createState() => _CustomSyllabusDataCardState();
}

class _CustomSyllabusDataCardState extends State<CustomSyllabusDataCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.pageBackground,
        border: Border.all(color: AppColors.greyE9, width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  widget.organizationSubject ?? "",
                  overflow: TextOverflow.ellipsis,
                  style: h18(
                      color: AppColors.colorPrimary,
                      fontWeight: FontWeight.w700),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    UIComponent.customInkWellWidget(
                      onTap: widget.onTapEdit ?? () {},
                      child: SvgPicture.asset(
                        SVGAssets.editIcon,
                        width: 24,
                        height: 24,
                        color: AppColors.colorPrimary,
                      ),
                    ),
                    UIComponent.customInkWellWidget(
                      onTap: widget.onTapDelete ?? () {},
                      child: Padding(
                        padding: const EdgeInsets.only(left: 6.0),
                        child: SvgPicture.asset(
                          SVGAssets.deleteIcon,
                          width: 24,
                          height: 24,
                          color: AppColors.red00,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            10.verticalSpace,
            Row(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: SvgPicture.asset(
                        SVGAssets.gradeIcon,
                        width: 24,
                        height: 24,
                        color: AppColors.colorPrimary,
                      ),
                    ),
                    6.horizontalSpace,
                    Flexible(
                      child: Text(
                        widget.grade ?? "",
                        style: h14(fontWeight: FontWeight.w500),
                        maxLines: 2,
                      ),
                    ),
                    // 8.horizontalSpace,
                  ],
                ),
                20.horizontalSpace,
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: SvgPicture.asset(
                        SVGAssets.sectionIcon,
                        width: 24,
                        height: 24,
                        color: AppColors.colorPrimary,
                      ),
                    ),
                    6.horizontalSpace,
                    Flexible(
                      child: Text(
                        widget.section ?? "",
                        style: h14(fontWeight: FontWeight.w500),
                        maxLines: 2,
                      ),
                    ),
                    // 8.horizontalSpace,
                  ],
                ),
              ],
            ),
            14.verticalSpace,
            CommonButton(
                title: widget.btnTitle ?? "", onTap: widget.onTapViewSyllabus!),
          ],
        ),
      ),
    );
  }
}
