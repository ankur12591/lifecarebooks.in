import 'package:book_nest_life_care/app/ui/screens/notification/model/notifcation_list_model.dart';
import 'package:book_nest_life_care/utils/extensions.dart';
import 'package:book_nest_life_care/utils/ui_components.dart';
import 'package:flutter/material.dart';

import '../../../../../config/app_assets.dart';
import '../../../../../config/app_colors.dart';
import '../../../../../config/text_styles.dart';

Widget notificationItem({
  NotificationListModel? modelData,
  required VoidCallback onTap,
  bool isReadColor = false,
}) {
  return UIComponent.customInkWellWidget(
    onTap: onTap,
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: isReadColor == true ? Colors.transparent : AppColors.blueF6,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Row(
                    children: [
                      modelData?.isAlert == true
                          ? SVGAssets.alertIcon.toSvg
                          : modelData?.isUpdate == true
                              ? SVGAssets.updateIcon.toSvg
                              : SVGAssets.messageIcon.toSvg,
                      16.horizontalSpace,
                      Text(
                        modelData?.messageTitle ?? "",
                        style: h16().copyWith(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Text(
                  modelData?.timestamp ?? "",
                  style: h12().copyWith(color: AppColors.grey77),
                )
              ],
            ),
            10.verticalSpace,
            modelData?.isSimpleMessage == true
                ? Text(
                    modelData?.message ?? "",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: h12().copyWith(color: AppColors.grey77),
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sender: ${modelData?.messageBody ?? ""}",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: h12().copyWith(color: AppColors.grey77),
                      ),
                      Text(
                        "Subject: ${modelData?.messageBodySubtitle ?? ""}",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: h12().copyWith(color: AppColors.grey77),
                      ),
                    ],
                  ),
          ],
        ),
      ),
    ),
  );
}
