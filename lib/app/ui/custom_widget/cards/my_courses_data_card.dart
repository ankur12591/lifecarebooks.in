import 'package:book_nest_life_care/app/ui/custom_widget/common_button.dart';
import 'package:book_nest_life_care/config/app_assets.dart';
import 'package:book_nest_life_care/config/app_colors.dart';
import 'package:book_nest_life_care/config/app_values.dart';
import 'package:book_nest_life_care/config/text_styles.dart';
import 'package:book_nest_life_care/utils/extensions.dart';
import 'package:book_nest_life_care/utils/ui_components.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyCoursesDataCard extends StatefulWidget {
  final String? className;
  final String? ratings;
  final String? startEndDate;
  final String? department;
  final String? myCourseTitle;
  final String? categoryTitle;
  final String? detailDescription;
  final String? btnTitle;
  final String? userReview;
  final String? userReviewCount;
  final String? location;
  final String? imgUrl;

  final String? logo;
  final String? status;
  final bool isProjectDetails;
  final bool isClientProfile;
  final bool isEditDeleteEnabled;
  final bool isForDesigner;
  final bool isSaved;
  final VoidCallback? onTapBtn;

  const MyCoursesDataCard({
    super.key,
    this.className,
    this.ratings,
    this.startEndDate,
    this.department,
    this.myCourseTitle,
    this.categoryTitle,
    this.detailDescription,
    this.btnTitle,
    this.userReview,
    this.userReviewCount,
    this.location,
    this.imgUrl,
    this.logo,
    this.status,
    this.isForDesigner = false,
    this.isProjectDetails = false,
    this.isClientProfile = false,
    this.isEditDeleteEnabled = false,
    this.isSaved = false,
    this.onTapBtn,
  });

  @override
  State<MyCoursesDataCard> createState() => _MyCoursesDataCardState();
}

class _MyCoursesDataCardState extends State<MyCoursesDataCard> {
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
            widget.imgUrl != null
                ? Container(
                    width: AppValues.screenWidth,
                    height: AppValues.screenWidth * 0.5,
                    decoration: BoxDecoration(
                      color: AppColors.greyDC,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(14),
                      child: CachedNetworkImage(
                        // height: 50,
                        // width: 50,
                        fit: BoxFit.cover,
                        imageUrl: widget.imgUrl ?? "",
                        placeholder: (context, url) =>
                            Center(child: SVGAssets.placeHolderImg.toSvg),
                        errorWidget: (context, url, error) =>
                            Center(child: SVGAssets.placeHolderImg.toSvg),
                      ),
                    ),
                  )
                : Container(
                    width: AppValues.screenWidth,
                    height: AppValues.screenWidth * 0.5,
                    decoration: BoxDecoration(
                      color: AppColors.greyDC,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: SizedBox(
                        child: SVGAssets.placeHolderImg.toSvg,
                      ),
                    ),
                  ),
            20.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  widget.myCourseTitle ?? "",
                  overflow: TextOverflow.ellipsis,
                  style: h18(
                      color: AppColors.colorPrimary,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            10.verticalSpace,
            Text(
              widget.categoryTitle ?? "",
              overflow: TextOverflow.ellipsis,
              style: h12(color: AppColors.black5E, fontWeight: FontWeight.w400),
            ),
            10.verticalSpace,
            Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    widget.ratings ?? "",
                    style: h12(fontWeight: FontWeight.w500),
                  ),
                  16.horizontalSpace,
                  RatingBar(
                    itemSize: 12,
                    initialRating: double.parse(widget.userReview ?? "0"),
                    allowHalfRating: true,
                    ratingWidget: RatingWidget(
                      full: SVGAssets.reviewStarIcon.toSvg,
                      half: SVGAssets.reviewStarHalfIcon.toSvg,
                      empty: SVGAssets.reviewStarEmptyIcon.toSvg,
                    ),
                    ignoreGestures: true,
                    onRatingUpdate: (rating) {
                      // print(rating);
                    },
                  ),
                  10.horizontalSpace,
                  RichText(
                    text: TextSpan(
                      style: h14().copyWith(fontWeight: FontWeight.w500),
                      children: [
                        TextSpan(
                          text: '${widget.userReview}',
                          // Text inside the bracket
                          style: h14().copyWith(
                              fontWeight: FontWeight.w500,
                              color: AppColors.black2E),
                        ),
                        TextSpan(
                          text: ' (${widget.userReviewCount})',
                          // Text inside the bracket
                          style: h14().copyWith(
                              fontWeight: FontWeight.w500,
                              color: AppColors.black2E),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            24.verticalSpace,
            Text(
              widget.detailDescription ?? "",
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: h12(color: AppColors.black48, fontWeight: FontWeight.w400),
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
                        SVGAssets.classIcon,
                        width: 24,
                        height: 24,
                        color: AppColors.colorPrimary,
                      ),
                    ),
                    6.horizontalSpace,
                    Flexible(
                      child: Text(
                        widget.className ?? "",
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
                        SVGAssets.departmentIcon,
                        width: 24,
                        height: 24,
                        color: AppColors.colorPrimary,
                      ),
                    ),
                    6.horizontalSpace,
                    Flexible(
                      child: Text(
                        widget.department ?? "",
                        style: h14(fontWeight: FontWeight.w500),
                        maxLines: 2,
                      ),
                    ),
                    // 8.horizontalSpace,
                  ],
                ),
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
                        SVGAssets.calendarBlueIcon,
                        width: 24,
                        height: 24,
                        color: AppColors.colorPrimary,
                      ),
                    ).showIf(widget.startEndDate != null &&
                        widget.startEndDate!.isNotEmpty),
                    6.horizontalSpace,
                    Flexible(
                      child: Text(
                        widget.startEndDate ?? "",
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
                    title: widget.btnTitle ?? "",
                    onTap: widget.onTapBtn ?? () {})
                .showIf(widget.btnTitle != null && widget.btnTitle!.isNotEmpty),
          ],
        ),
      ),
    );
  }
}
