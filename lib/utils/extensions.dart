import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

import '../config/app_colors.dart';

extension Space on num {
  Widget get verticalSpace {
    return SizedBox(height: toDouble());
  }

  Widget get horizontalSpace {
    return SizedBox(width: toDouble());
  }
}

extension StringExtension on String? {
  Widget svgBasic() {
    String path = '$this';
    return SvgPicture.asset(
      path,
    );
  }

  Widget get toSvg => svgBasic();
}

extension ShowHideExtension on Widget {
  Widget show() {
    return Visibility(
      visible: true,
      child: this,
    );
  }

  Widget hide() {
    return Visibility(
      visible: false,
      child: this,
    );
  }
}

extension ConditionalWidgetExtension on Widget {
  Widget showIf(bool condition) {
    return condition ? this : const SizedBox.shrink();
  }

  Widget hideIf(bool condition) {
    return condition ? const SizedBox.shrink() : this;
  }
}

// method for round off and return double value
extension DoubleExtension on double {
  double roundOff() {
    double decimalPart = this - floor();
    if (decimalPart >= 0.5) {
      return ceilToDouble();
    } else {
      return floorToDouble();
    }
  }
}
extension CustomDivider on Divider {
  static Divider colored() {
    return const Divider(
      color: AppColors.greyF3,
      height: 2,
      thickness: 2,
    );
  }
}
