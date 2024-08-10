import 'package:flutter/material.dart';

String? validateFirstName(
    BuildContext context, String? value, String? emptyMessage) {
  if (value == null || value.isEmpty) {
    return emptyMessage;
  }
  return null;
}

String? validateLastName(
    BuildContext context, String? value, String? emptyMessage) {
  if (value == null || value.isEmpty) {
    return emptyMessage;
  }
  return null;
}

String? validateTitleName(
    BuildContext context, String? value, String? emptyMessage) {
  if (value == null || value.isEmpty) {
    return emptyMessage;
  }
  return null;
}

String? validateDOB(BuildContext context, String? value, String? emptyMessage) {
  if (value == null || value.isEmpty) {
    return emptyMessage;
  }
  return null;
}

String? validateClass(
    BuildContext context, String? value, String? emptyMessage) {
  if (value == null || value.isEmpty) {
    return emptyMessage;
  }
  return null;
}

String? validateSection(
    BuildContext context, String? value, String? emptyMessage) {
  if (value == null || value.isEmpty) {
    return emptyMessage;
  }
  return null;
}

String? validateSubject(
    BuildContext context, String? value, String? emptyMessage) {
  if (value!.isEmpty) {
    return emptyMessage;
  } else {
    return null;
  }
}

String? validateAssignment(
    BuildContext context, String? value, String? emptyMessage) {
  if (value!.isEmpty) {
    return emptyMessage;
  } else {
    return null;
  }
}

String? validateLeaveType(
    BuildContext context, String? value, String? emptyMessage) {
  if (value == null || value.isEmpty) {
    return emptyMessage;
  }
  return null;
}

String? validateReason(BuildContext context, String? value,
    String? emptyMessage, String? lengthMessage) {
  if (value == null || value.isEmpty) {
    return emptyMessage;
  } else if (value.length < 7) {
    return lengthMessage;
  }
  return null;
}

String? validateStatusType(
    BuildContext context, String? value, String? emptyMessage) {
  if (value == null || value.isEmpty) {
    return emptyMessage;
  }
  return null;
}

String? validateMonthYear(BuildContext context, String? value) {
  if (value == null || value.isEmpty) {
    return "Please select month";
  }
  return null;
}

String? validateDate(
    BuildContext context, String? value, String? emptyMessage) {
  if (value == null || value.isEmpty) {
    return emptyMessage;
  }
  return null;
}

String? validateEmail(
  BuildContext context,
  String? value,
  String? emptyMessage,
  String? validMessage,
) {
  const String pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  final RegExp regExp = RegExp(pattern);
  if (value!.isEmpty) {
    return emptyMessage;
  } else if (!regExp.hasMatch(value)) {
    return validMessage;
  } else {
    return null;
  }
}

String? validatePassword(
  BuildContext context,
  String? value,
  String? emptyMessage,
  String? validMessage,
) {
  const String pattern =
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$';
  // Contains at least one uppercase letter (A-Z).
  // Contains at least one lowercase letter (a-z).
  // Contains at least one digit (0-9).
  // Contains at least one special character (!@#\$&*~).
  // Is at least 6 characters long.
  final RegExp regExp = RegExp(pattern);
  if (value!.isEmpty) {
    return emptyMessage;
  } else if (!regExp.hasMatch(value)) {
    return validMessage;
  } else {
    return null;
  }
}

String? validateEmptyPassword(
  BuildContext context,
  String? value,
  String? emptyMessage,
) {
  if (value!.isEmpty) {
    return emptyMessage;
  } else {
    return null;
  }
}

String? validateConfirmPassword(
  BuildContext context,
  String? passwordValue,
  String? confirmPasswordValue,
  String? emptyMessage,
) {
  if (passwordValue!.isEmpty) {
    return emptyMessage;
  } else if (passwordValue != confirmPasswordValue) {
    return "Password doesn't match";
  } else {
    return null;
  }
}

String? validateRoleSelection(BuildContext context, String? value) {
  if (value == null || value.isEmpty) {
    return "Please select a role";
  }
  return null;
}

String? validateCountry(
  BuildContext context,
  String? value,
  String? emptyMessage,
) {
  if (value == null || value.isEmpty) {
    return emptyMessage;
  }
  return null;
}

String? validateState(
    BuildContext context, String? value, String? emptyMessage) {
  if (value == null || value.isEmpty) {
    return emptyMessage;
  }
  return null;
}

String? validateCity(
    BuildContext context, String? value, String? emptyMessage) {
  if (value == null || value.isEmpty) {
    return emptyMessage;
  }
  return null;
}

String? validateTimezone(
    BuildContext context, String? value, String? emptyMessage) {
  if (value == null || value.isEmpty) {
    return emptyMessage;
  }
  return null;
}

String? validateBookCategory(
    BuildContext context, String? value, String? emptyMessage) {
  if (value == null || value.isEmpty) {
    return emptyMessage;
  }
  return null;
}

String? validateBookTitle(
    BuildContext context, String? value, String? emptyMessage) {
  if (value == null || value.isEmpty) {
    return emptyMessage;
  }
  return null;
}

String? validateNoticeTitle(
  BuildContext context,
  String? value,
  String? emptyMessage,
  String? validMessage,
) {
  const String pattern =
      r'^[A-Za-z0-9](?!.*[ ._-]{2})(?!.*[ ._-]$)(?!.*[ ._-]{2})[A-Za-z0-9 ._-]*$';
  final RegExp regExp = RegExp(pattern);
  if (value!.isEmpty) {
    return emptyMessage;
  } else if (!regExp.hasMatch(value)) {
    return validMessage;
  } else {
    return null;
  }
}

String? validateDescription(
    BuildContext context, String? value, String? emptyMessage) {
  if (value == null || value.isEmpty) {
    return emptyMessage;
  }
  return null;
}

int? convertYearTo4Digits(int year) {
  if (year < 100 && year >= 0) {
    var now = DateTime.now();
    String currentYear = now.year.toString();
    String prefix = currentYear.substring(0, currentYear.length - 2);
    year = int.parse('$prefix${year.toString().padLeft(2, '0')}');
  }
  return year;
}
