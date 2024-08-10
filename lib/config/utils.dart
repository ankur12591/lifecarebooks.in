import 'dart:io';

import 'package:collection/collection.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:open_filex/open_filex.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

import 'app_constants.dart';

class Utils {
  /// Returns status if device has internet available.
  ///
  /// Return true if network available otherwise false.
  static Future<bool> isConnected() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      return true;
    }
    return false;
  }

  static bool isEmpty(String? string) {
    return string == null || string.isEmpty;
  }

  /// Return string date with yyyy-MM-dd format.
  static String getTodayDate() {
    var now = DateTime.now();
    var formatter = DateFormat('yyyy-MM-dd');
    String formattedDate = formatter.format(now);
    return formattedDate;
  }

  static String formatDate(String date, String dateFormat) {
    var newDate = "";
    final DateFormat formatter = DateFormat(dateFormat);
    newDate = formatter.format(DateTime.parse(date));
    return newDate;
  }
  static String formatDateWithInputFormat(String date, String inputFormat, String outputFormat) {
    final DateFormat inputFormatter = DateFormat(inputFormat);
    final DateFormat outputFormatter = DateFormat(outputFormat);
    DateTime parsedDate = inputFormatter.parse(date);
    return outputFormatter.format(parsedDate);
  }

  static DateTime parseDateString(String date, String dateFormat) {
    try {
      return DateTime.parse(date);
    } catch (e) {
      try {
        return DateFormat(dateFormat).parse(date);
      } catch (e) {
        return DateTime.now();
      }
    }
  }

  static String convertDateFormat(String inputDate) {
    DateTime parsedDate = DateTime.parse(inputDate);
    String formattedDate = DateFormat("yyyy-MM-dd").format(parsedDate.toUtc());
    return formattedDate;
  }

  // Convert the given date to UTC and set the time to 12 AM
  static String dateTimeWithOffset(String date, String format) {
    DateFormat inputFormat = DateFormat(format);
    DateTime parsedDate = inputFormat.parse(date);
    String offsetHours =
        parsedDate.timeZoneOffset.inHours.abs().toString().padLeft(2, '0');
    String offsetMinutes = (parsedDate.timeZoneOffset.inMinutes % 60)
        .abs()
        .toString()
        .padLeft(2, '0')
        .padRight(2, '0');
    String offsetSign = parsedDate.timeZoneOffset.isNegative ? '-' : '+';
    String timeZoneOffset = '$offsetSign$offsetHours${":"}$offsetMinutes';
    // Convert to the desired time zone
    DateTime dateTimeWithOffset =
        parsedDate.toUtc().add(Duration(hours: 5, minutes: 30));

    // Format the date to the desired string format
    DateFormat dateFormat = DateFormat("yyyy-MM-ddTHH:mm:ss");
    String formattedDate = dateFormat.format(parsedDate);

    // Add the time zone offset manually
    formattedDate += timeZoneOffset;
    return formattedDate;
  }

  // Convert the given date to UTC and set the time to 12 AM
  static String toUtc(String date, String dateFormat) {
    DateFormat inputFormat = DateFormat(dateFormat);
    DateTime parsedDate = inputFormat.parse(date);
    DateTime utcMidnightDate = DateTime.utc(
        parsedDate.year, parsedDate.month, parsedDate.day, 0, 0, 0);
    return utcMidnightDate.toIso8601String();
  }

  // Convert the given time to 3:00 PM format
  static String formatTime(String dateTimeString) {
    DateTime dateTime = DateTime.parse(dateTimeString).toLocal();
    return DateFormat('h:mm a').format(dateTime);
  }

  static String formatDateTimeInOffset(
      String dateTimeString, String dateFormat) {
    // Parse the input string to DateTime using the provided format
    String inputDateString = dateTimeString;

    // Define the input date format
    DateFormat inputDateFormat = DateFormat(dateFormat);

    // Parse the input date string to a DateTime object
    DateTime dateTime = inputDateFormat.parse(inputDateString);

    // Define the output date format (ISO 8601)
    DateFormat outputDateFormat = DateFormat("yyyy-MM-ddTHH:mm:ss'Z'");

    // Format the DateTime object to the desired string
    String outputDateString = outputDateFormat.format(dateTime.toUtc());

    // Print the result
    debugPrint("outputDateString=============$outputDateString");
    return (outputDateString); // Output: 2003-05-24T00:00:00Z
  }

  // static String getStartDate(DateTime selectedMonthYear) {
  //   // Create startDate in UTC at midnight
  //   DateTime startDate =
  //       DateTime.utc(selectedMonthYear.year, selectedMonthYear.month, 1);
  //   String formatInUtc = startDate.toIso8601String();
  //   debugPrint("startDate=======$formatInUtc");
  //   return formatInUtc;
  // }
  // Output: Mon Apr 01 2024 11:45:20 GMT+0000
  // static String formatDateTime(DateTime dateTime) {
  //   // Get the time zone location for the given DateTime
  //   final location = tz.getLocation(dateTime.timeZoneName);
  //   final timezone = tz.TZDateTime.from(dateTime, location);
  //   final offset = timezone.timeZoneOffset;
  //   final offsetHours = offset.inHours.abs().toString().padLeft(2, '0');
  //   final offsetMinutes = (offset.inMinutes % 60).abs().toString().padLeft(2, '0');
  //   final offsetSign = offset.isNegative ? '-' : '+';
  //   final timeZoneOffset = '$offsetSign$offsetHours$offsetMinutes';
  //   final formattedDateString = DateFormat('EEE MMM dd yyyy HH:mm:ss \'GMT\'').format(timezone) +
  //       ' $timeZoneOffset (${timezone.timeZoneName})';
  //
  //   return formattedDateString;
  // }
  static String formatDateTime(DateTime dateTime) {
    String offsetHours =
        dateTime.timeZoneOffset.inHours.abs().toString().padLeft(2, '0');
    String offsetMinutes = (dateTime.timeZoneOffset.inMinutes % 60)
        .abs()
        .toString()
        .padLeft(2, '0')
        .padRight(2, '0');
    String offsetSeconds = (dateTime.timeZoneOffset.inSeconds % 60)
        .abs()
        .toString()
        .padLeft(2, '0');
    String offsetSign = dateTime.timeZoneOffset.isNegative ? '-' : '+';
    String timeZoneOffset = '$offsetHours$offsetMinutes';
    String timezoneName = dateTime.timeZoneName;
    String timeZoneFullName = timeZoneFullNames[timezoneName] ?? timezoneName;
    String formattedDateString =
        DateFormat('EEE MMM dd yyyy HH:mm:ss \'GMT\'').format(dateTime) +
            ' $timeZoneOffset \ $timeZoneFullName';
    return formattedDateString;
  }

  // Mapping time zone abbreviations to full names
  static final Map<String, String> timeZoneFullNames = {
    'IST': '(India Standard Time)', // Asia/Kolkata
    'UST': '(Coordinated Universal Time)', // UTC
    'EST': '(Eastern Standard Time)', // America/New_York
    'PST': '(Pacific Standard Time)', // America/Los_Angeles
    // Add more mappings as needed
  };

  static String getStartDate(DateTime selectedMonthYear) {
    final now = DateTime.now().toLocal();
    // Create startDate in UTC at midnight
    DateTime startDate = DateTime(selectedMonthYear.year,
        selectedMonthYear.month, 1, now.hour, now.minute, now.second, 0, 0);

    // Format the DateTime object into the desired output string
    String formattedDateString = formatDateTime(startDate.toLocal());

    debugPrint("startDate=======$formattedDateString");
    return formattedDateString;
  }

  static String getEndDate(DateTime selectedMonthYear) {
    final now = DateTime.now();
    // Get the last day of the month
    DateTime endDate = DateTime(selectedMonthYear.year, selectedMonthYear.month+1,
        0, now.hour, now.minute, now.second, 0, 0);

    // Format the DateTime object into the desired output string
    String formattedDateString = formatDateTime(endDate.toLocal());

    debugPrint("endDate=======$formattedDateString");
    return formattedDateString;
  }

  static String parseDate(String dateString) {
    // Map month abbreviations to their numeric equivalents
    const monthMap = {
      'Jan': '01',
      'Feb': '02',
      'Mar': '03',
      'Apr': '04',
      'May': '05',
      'Jun': '06',
      'Jul': '07',
      'Aug': '08',
      'Sep': '09',
      'Oct': '10',
      'Nov': '11',
      'Dec': '12',
    };

    // Extract the relevant parts of the date string using a regular expression
    RegExp regExp = RegExp(r'\w+ (\w+) (\d+) (\d+) \d{2}:\d{2}:\d{2} GMT.*');
    Match? match = regExp.firstMatch(dateString);

    if (match != null) {
      String month = match.group(1)!;
      String day = match.group(2)!;
      String year = match.group(3)!;

      // Convert the month abbreviation to its numeric equivalent
      String numericMonth = monthMap[month]!;

      // Create a DateTime object using the extracted parts
      DateTime dateTime = DateTime.parse('$year-$numericMonth-$day');

      // Format the DateTime object into the desired format
      DateFormat formatter = DateFormat('MMMM yyyy');
      return formatter.format(dateTime);
    } else {
      throw FormatException('Invalid date format');
    }
  }

  static DateTime parseDateTime(String dateString) {
    // Regular expression to extract the components of the date string
    RegExp regExp = RegExp(r'\w+ (\w+) (\d+) (\d{4}) (\d{2}):(\d{2}):(\d{2})');
    Match? match = regExp.firstMatch(dateString);

    if (match != null) {
      // Map month abbreviations to their numeric equivalents
      const monthMap = {
        'Jan': 1,
        'Feb': 2,
        'Mar': 3,
        'Apr': 4,
        'May': 5,
        'Jun': 6,
        'Jul': 7,
        'Aug': 8,
        'Sep': 9,
        'Oct': 10,
        'Nov': 11,
        'Dec': 12,
      };

      String monthString = match.group(1)!;
      int month = monthMap[monthString]!;
      int day = int.parse(match.group(2)!);
      int year = int.parse(match.group(3)!);
      int hour = int.parse(match.group(4)!);
      int minute = int.parse(match.group(5)!);
      int second = int.parse(match.group(6)!);

      // Create the DateTime object
      DateTime dateTime = DateTime(year, month, day, hour, minute, second);
      return dateTime;
    } else {
      throw FormatException('Invalid date format');
    }
  }

  static String formatDuration(int minutes) {
    if (minutes >= 60) {
      int hours = minutes ~/ 60; // Integer division to get the number of hours
      int remainingMinutes =
          minutes % 60; // Remainder to get the leftover minutes
      if (remainingMinutes == 0) {
        return '$hours hr${hours > 1 ? 's' : ''}';
      } else {
        return '$hours hr${hours > 1 ? 's' : ''} $remainingMinutes min${remainingMinutes > 1 ? 's' : ''}';
      }
    } else {
      return '$minutes min${minutes > 1 ? 's' : ''}';
    }
  }

  /// Format number 1000 to 1K
  ///
  static String formatNumber(int number) {
    if (number >= 1000000) {
      double millions = number / 1000000;
      return '${millions.toStringAsFixed(millions.truncateToDouble() == millions ? 0 : 1)}M';
    } else if (number >= 1000) {
      double thousands = number / 1000;
      return '${thousands.toStringAsFixed(thousands.truncateToDouble() == thousands ? 0 : 1)}K';
    } else {
      return number.toString();
    }
  }

  /// To get URL File Name
  ///
  static String getFileNameFromUrl(String url) {
    Uri uri = Uri.parse(url);
    return uri.pathSegments.last;
  }

  static void dismissKeyboard(BuildContext context) {
    final FocusScopeNode currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }

  static void snackBar(
      {required BuildContext context, required String message}) {
    if (message.isEmpty) {
      return;
    }
    final snackBar = SnackBar(
      elevation: 4,
      duration: const Duration(seconds: 3),
      behavior: SnackBarBehavior.floating,
      content: Text(message),
    );

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..clearSnackBars()
      ..showSnackBar(snackBar);
  }

  static void showErrorMessage(
      {required BuildContext context, required String message}) {
    final snackBar = SnackBar(
      elevation: 4,
      duration: const Duration(seconds: 5),
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.red,
      content: Text(message),
    );

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..clearSnackBars()
      ..showSnackBar(snackBar);
  }

  static void showSnackBar(
      {required BuildContext context, required String message}) {
    if (message.isEmpty) {
      return;
    }
    final snackBar = SnackBar(
      elevation: 4,
      duration: const Duration(seconds: 3),
      behavior: SnackBarBehavior.floating,
      content: Text(message),
    );

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..clearSnackBars()
      ..showSnackBar(snackBar);
  }


  static String getAttendanceStatus(int attendanceStatus) {
    String status = "-";
    switch (attendanceStatus) {
      case 1:
        status = AppConstants.statusPresent;
        break;
      case 2:
        status = AppConstants.statusAbsent;
        break;
      case 3:
        status = AppConstants.statusHalfLeave;
        break;
      case 4:
        status = AppConstants.statusLate;
        break;

      default:
        status = "\'-\'";
    }
    return status;
  }

  static int calculateTotalPages(int pageSize, int totalItems) {
    return (totalItems / pageSize).ceil();
  }

  static Future<void> getStorageReadPermission() async {
    final storage = await Permission.storage.status;
    !storage.isGranted
        ? await Permission.storage.request()
        : debugPrint("Storage read permission already granted");
  }

  static Future<void> getStorageManagePermission() async {
    final manageStorage = await Permission.manageExternalStorage.status;
    !manageStorage.isGranted
        ? await Permission.manageExternalStorage.request()
        : debugPrint("storage permission already granted");
  }
}
