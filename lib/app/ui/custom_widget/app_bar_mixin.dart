import 'package:book_nest_life_care/config/app_assets.dart';
import 'package:book_nest_life_care/utils/extensions.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../config/app_colors.dart';
import '../../../config/text_styles.dart';
import '../../../utils/ui_components.dart';
import '../../navigation/routes.dart';

mixin AppBarMixin {
  PreferredSizeWidget buildAppBar({
    required String title,
    required BuildContext context,
    bool requireTransparent = false,
    bool requireHamburgerIcon = false,
    bool requireLeading = false,
    bool requireBackButton = false,
    bool requireNotificationIcon = false,
    String? notificationCount = "0",
    final VoidCallback? onHamburgerIconTap,
    List<Widget>? actions,
    double? appBarHeight,
  }) {
    appBarHeight ??= kToolbarHeight;

    List<Widget>? appBarActions = actions;
    if (requireNotificationIcon) {
      final showBadge =
          notificationCount!.isNotEmpty && notificationCount != "0";
      final notificationIcon = Padding(
        padding: const EdgeInsets.only(right: 16.0, top: 4, bottom: 12),
        child: UIComponent.customInkWellWidget(
          onTap: () {
            context.pushNamed(Routes.kNotificationListScreen);
          },
          child: showBadge
              ? badges.Badge(
                  position: badges.BadgePosition.topEnd(top: -5, end: 1),
                  showBadge: true,
                  badgeAnimation: const badges.BadgeAnimation.fade(),
                  badgeContent: Text(
                    notificationCount,
                    maxLines: 1,
                    textAlign: TextAlign.center,
                    style: h12().copyWith(
                        fontWeight: FontWeight.w700, color: Colors.white),
                  ),
                  badgeStyle: const badges.BadgeStyle(
                    badgeColor: AppColors.red00,
                  ),
                  child: Container(
                      width: 42,
                      height: 42,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                              Border.all(color: AppColors.greyE9, width: 1)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 7.0, right: 7, top: 10, bottom: 10),
                        child: SVGAssets.appBarNotificationIcon.toSvg,
                      )),
                )
              : Container(
                  width: 38,
                  height: 38,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: AppColors.greyE9, width: 1)),
                  child: SizedBox(
                      height: 24,
                      width: 24,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SVGAssets.appBarNotificationIcon.toSvg,
                      ))),
        ),
      );

      if (appBarActions != null) {
        appBarActions = [notificationIcon, ...appBarActions];
      } else {
        appBarActions = [notificationIcon];
      }
    }
    return PreferredSize(
      preferredSize: Size.fromHeight(appBarHeight),
      child: AppBar(
        // automaticallyImplyLeading: false,
        iconTheme: IconThemeData(color: AppColors.white),
        leading: requireLeading
            ? requireHamburgerIcon == true
                ? InkWell(
                    onTap: onHamburgerIconTap,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SVGAssets.hamburgerIcon.toSvg,
                    ),
                  )
                : null
            : (requireBackButton == true &&
                    requireLeading == true) // Added condition here
                ? InkWell(
                    onTap: () {
                      context.pop();
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      color: AppColors.pageBackground,
                    ),
                  )
                : null,
        elevation: 0,
        backgroundColor:
            requireTransparent ? Colors.transparent : AppColors.colorPrimary,
        title: Text(
          title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: h24(fontWeight: FontWeight.w700, color: AppColors.white),
        ),
        actions: appBarActions,
      ),
    );
  }

  /// Method logout dialog
  ///
  void logout(BuildContext context) async {
    context.goNamed(Routes.kLoginScreen);
  }
}
