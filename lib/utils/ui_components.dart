import 'dart:developer' as dev;
import 'dart:io';

import 'package:book_nest_life_care/app/ui/custom_widget/custom_dialogs/custom_show_dialog.dart';
import 'package:book_nest_life_care/config/utils.dart';
import 'package:book_nest_life_care/utils/custom_widgets/capped_progress_indicator.dart';
import 'package:book_nest_life_care/utils/extensions.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:html/parser.dart' as html_parser;
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';


import '../app/ui/custom_widget/custom_month_picker_dialog.dart';
import '../config/app_assets.dart';
import '../config/app_colors.dart';
import '../config/text_styles.dart';

void printf(dynamic value) {
  if (!kReleaseMode) dev.log(value.toString());
}

class UIComponent {
  static showCustomBottomSheet({BuildContext? context, Widget? builder}) {
    showModalBottomSheet(
      context: context!,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
          child: builder!,
        );
      },
    );
  }

  static noDataRoundedCard() {
    return Container(
      width: double.infinity,
      // height: /*AppValues.screenHeight / 5*/ 200,
      decoration: BoxDecoration(
          color: AppColors.pageBackground,
          border: Border.all(color: AppColors.greyBF, width: 1),
          borderRadius: BorderRadius.circular(10)),
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SVGAssets.noData.toSvg,
              8.verticalSpace,
              Text(
                "Select file",
                textAlign: TextAlign.center,
                style: h12().copyWith(
                    fontWeight: FontWeight.w500, color: AppColors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static uploadSyllabusViewCard({
    required String title,
  }) {
    return Container(
      width: double.infinity,
      // height: /*AppValues.screenHeight / 5*/ 200,
      decoration: BoxDecoration(
          color: AppColors.pageBackground,
          border: Border.all(color: AppColors.greyBF, width: 1),
          borderRadius: BorderRadius.circular(10)),
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Row(
                  children: [
                    Flexible(flex: 1, child: SVGAssets.documentImg.toSvg),
                    24.horizontalSpace,
                    Flexible(
                      flex: 4,
                      child: Text(
                        title ?? "",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: h16().copyWith(color: AppColors.black20),
                      ),
                    ),
                  ],
                ),
              ),
              // SVGAssets.downloadIcon.toSvg,
            ],
          ),
        ),
      ),
    );
  }

  static Future<String> downloadFile(
      BuildContext context, String url, String extension) async {
    _showProgressDialog(context);
    String fileName = url.split('/').last;
    String? filePath;

    Directory? directory;
    if (Platform.isIOS) {
      directory = await getApplicationDocumentsDirectory();
    } else if (Platform.isAndroid) {
      directory = Directory('/storage/emulated/0/Download');
    }

    String? tempPath = directory?.path;
    String tempFilePath = '$tempPath/$fileName';

    Dio dio = Dio();

    try {
      await dio.download(
        url,
        tempFilePath,
        onReceiveProgress: (receivedBytes, totalBytes) {},
      );

      String newFilePath = tempFilePath.replaceAll('.bin', '.$extension');
      File file = File(tempFilePath);
      await file.rename(newFilePath);

      // setState(() {
      filePath = newFilePath;
      // });
      context.pop();
    } catch (error) {
      context.pop();
      print("Error during download: $error");
      Utils.showSnackBar(
          context: context, message: "Error occurred during download");
    }

    return filePath ?? "";
  }

  static Future<void> _showProgressDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
            elevation: 0.0,
            backgroundColor: AppColors.pageBackground,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: SizedBox(
              height: 100.0,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Download In-Progress",
                        textAlign: TextAlign.center, style: h14()),
                    12.verticalSpace,
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 18.0),
                      child: LinearCappedProgressIndicator(
                        cornerRadius: 30,
                        backgroundColor: AppColors.purpleC4,
                        minHeight: 10,
                        valueColor: AlwaysStoppedAnimation<Color>(
                            AppColors.colorPrimary),
                      ),
                    ),
                  ],
                ),
              ),
            ));
      },
    );
  }

  static Widget createDestination({
    required String title,
    required List<String> subtitle,
    required String icon,
    required Function(int) onSubtitleTap,
  }) {
    return Theme(
      data: ThemeData().copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        title: Text(
          title,
          style: h14().copyWith(fontWeight: FontWeight.w600),
        ),
        leading: icon.toSvg,
        // trailing: SVGAssets.arrowBlackIcon.toSvg,
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: subtitle.length,
            padding: EdgeInsets.zero,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(
                  subtitle[index],
                  // style:
                  //     h14().copyWith(fontWeight: FontWeight.w600),
                ),
                selectedColor: AppColors.colorPrimary,
                selected: true,
                leading: SVGAssets.dotIcon.toSvg,
                onTap: () => onSubtitleTap(index),
              );
            },
          ),
        ],
      ),
    );
  }

  static Widget customInkWellWidget({
    VoidCallback? onTap,
    Widget? child,
    double? padding,
  }) {
    return InkWell(
        splashFactory: NoSplash.splashFactory,
        highlightColor: Colors.transparent,
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.all(padding ?? 0),
          child: child,
        ));
  }

  static cachedNetworkImageWidget(
      {required String? imageUrl,
      double? height,
      double? width,
      BoxFit? fit,
      bool? isProfileImage = false}) {
    return CachedNetworkImage(
      height: height,
      width: width,
      fit: fit,
      imageUrl: imageUrl ?? "",
      placeholder: (context, url) => SvgPicture.asset(
        isProfileImage == false
            ? SVGAssets.placeholder
            : SVGAssets.profilePlaceholder,
        fit: BoxFit.cover,
      ),
      errorWidget: (context, url, error) => SvgPicture.asset(
        isProfileImage == false
            ? SVGAssets.placeholder
            : SVGAssets.profilePlaceholder,
        fit: BoxFit.cover,
      ),
    );
  }

  static String parseHtmlString(String htmlString) {
    final document = html_parser.parse(htmlString);
    final String parsedString = document.body?.text ?? '';
    return parsedString;
  }

  static void showCustomWidgetDialog({
    required BuildContext context,
    required String titleHeading,
    required Widget childWidget,
  }) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CustomShowDialog(
          titleHeading: titleHeading,
          childWidget: childWidget,
        );
      },
    );
  }

  static Future<String> chooseDate(
      {BuildContext? context,
      String? helpText,
      TextEditingController? textController,
      String? dateFormat,
      DateTime? selectedDate,
      DateTime? firstDate,
      DateTime? lastDate}) async {
    DateTime? pickedDate = await showDatePicker(
      context: context!,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate:
          firstDate ?? DateTime.now().subtract(const Duration(days: 365)),
      lastDate: lastDate ?? DateTime.now(),
      helpText: helpText,
    );
    if (pickedDate != null && pickedDate != selectedDate) {
      selectedDate = pickedDate;
      textController?.text =
          DateFormat(dateFormat).format(selectedDate).toString();
    }

    return textController?.text.toString() ?? "";
  }

  // static Future<String> chooseMonthYear(
  //     {BuildContext? context,
  //     TextEditingController? textController,
  //     String? dateFormat,
  //     DateTime? selectedMonthYear,
  //     DateTime? firstDate,
  //     DateTime? lastDate}) async {
  //   DateTime? pickedMonthYear = await showCustomMonthPicker(
  //     context: context!,
  //     initialDate: selectedMonthYear ?? DateTime.now(),
  //     firstDate: firstDate ?? DateTime(1990),
  //     lastDate: lastDate ?? DateTime.now(),
  //     builder: (context, child) {
  //       return Theme(
  //         data: Theme.of(context).copyWith(
  //           colorScheme: const ColorScheme.light(
  //             primary: AppColors.colorPrimary,
  //             surfaceTint: AppColors.white,
  //             onBackground: AppColors.colorPrimary,
  //             onSurface: AppColors.black,
  //             onSecondary: AppColors.white,
  //             onSecondaryContainer: AppColors.colorPrimary,
  //             secondary: AppColors.colorPrimary,
  //           ),
  //           textButtonTheme: TextButtonThemeData(
  //             style: TextButton.styleFrom(
  //               foregroundColor: AppColors.black, // button text color
  //             ),
  //           ),
  //         ),
  //         child: child!,
  //       );
  //     },
  //   );
  //   if (pickedMonthYear != null && pickedMonthYear != selectedMonthYear) {
  //     selectedMonthYear = pickedMonthYear;
  //     textController?.text =
  //         DateFormat(dateFormat).format(selectedMonthYear).toString();
  //     debugPrint("pickedMonthYear=======$pickedMonthYear");
  //   }
  //
  //   return textController?.text.toString() ?? "";
  // }

  static Future<List<DateTime?>> showDateRangePickerDialog(
      BuildContext context, List<DateTime?> selectedDates) async {
    final firstDate = DateTime(1900);
    final lastDate = DateTime(2100);

    final result = await showDialog<List<DateTime?>>(
      context: context,
      builder: (context) {
        return Dialog(
          child: Container(
            constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width *
                    0.7), // Adjust width as needed

            decoration: BoxDecoration(
              color: AppColors.greyF3,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CalendarDatePicker2(
                  config: CalendarDatePicker2Config(
                    firstDate: firstDate,
                    lastDate: lastDate,
                    calendarType: CalendarDatePicker2Type.range,
                    selectedDayHighlightColor: AppColors.colorPrimary,
                    calendarViewMode: CalendarDatePicker2Mode.day,
                    dayMaxWidth: 35,
                    // useAbbrLabelForMonthModePicker: false
                    // controlsHeight: 20
                  ),
                  onValueChanged: (dates) {
                    selectedDates = dates;
                  },
                  value: selectedDates,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    TextButton(
                      onPressed: () {
                        context.pop();
                      },
                      child: Text(
                        'Cancel',
                        style: h14(
                            fontWeight: FontWeight.bold,
                            color: AppColors.black),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        context.pop(selectedDates);
                      },
                      child: Text(
                        'Ok',
                        style: h14(
                            fontWeight: FontWeight.bold,
                            color: AppColors.black),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );

    return result ?? [];
  }

  static attendanceStatus(
      {required Color containerColor,
      required String status,
      required Color statusColor}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        height: 30,
        width: 30,
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: containerColor),
        padding: const EdgeInsets.all(4),
        child: Center(
          child: Text(status,
              style: h12()
                  .copyWith(color: statusColor, fontWeight: FontWeight.w700)),
        ),
      ),
    );
  }

  static noData() {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SVGAssets.noData.toSvg,
            8.verticalSpace,
            Text(
              "No Data",
              textAlign: TextAlign.center,
              style: h12().copyWith(
                  fontWeight: FontWeight.w500, color: AppColors.black),
            ),
          ],
        ),
      ),
    );
  }
}
