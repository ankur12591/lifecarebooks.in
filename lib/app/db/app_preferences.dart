import 'dart:convert';

import 'package:book_nest_life_care/app/ui/screens/authentication/login/model/login_response.model.dart';
import 'package:book_nest_life_care/app/ui/screens/authentication/login/model/user_role_response_model.dart';
import 'package:book_nest_life_care/config/utils.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppPreferences {
  static final AppPreferences _instance = AppPreferences._internal();

  factory AppPreferences() => _instance;

  AppPreferences._internal();

  //------------------------- Preference Constants -----------------------------

  static const String keyEmail = "keyEmail";
  static const String keyPassword = "keyPassword";
  static const String keyRememberMe = "keyRememberMe";
  static const String keyLoginDetails = "keyLoginDetails";
  static const String keySideDrawerDetails = "keySideDrawerDetails";
  static const String keyApiToken = "keyApiToken";
  static const String keyUserID = "keyUserID";
  static const String keyIsLoggedIn = "keyIsLoggedIn";
  static const String keyIsAdmin = "keyIsAdmin";

  static const String keyUserRole = 'keyUserRole';
  static const String keyLanguageDetails = 'keyLanguageDetails';

  // Method to set email
  Future<bool> setEmail(String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(keyEmail, value);
  }

  // Method to get email
  Future<String?> getEmail() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(keyEmail);
  }

  // Method to set password
  Future<bool> setPassword(String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(keyPassword, value);
  }

  // Method to get password
  Future<String?> getPassword() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(keyPassword);
  }

// Method to set user role

  Future<bool> setUserRole(UserRoleData value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String userRoleJson = jsonEncode(value.toJson());
    return prefs.setString(keyUserRole, userRoleJson);
  }

  // Method to get user role

  Future<UserRoleData?> getUserRole() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userRoleJson = prefs.getString(keyUserRole);
    if (userRoleJson != null) {
      Map<String, dynamic> userRoleMap = jsonDecode(userRoleJson);
      return UserRoleData.fromJson(userRoleMap);
    }
    return null;
  }

  // Method to set remember me
  Future<bool> setIsRemember(bool value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setBool(keyRememberMe, value);
  }

  // Method to get remember me
  Future<bool?> getIsRemember() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(keyRememberMe);
  }

  // // Method to get login details
  // Future<GetProfileResponse?> getLoginDetails() async {
  //   final SharedPreferences shared = await SharedPreferences.getInstance();
  //   String? loginDetails = shared?.getString(keyLoginDetails);
  //   if (Utility.isEmpty(loginDetails)) {
  //     return null;
  //   }
  //   try {
  //     return GetProfileResponse.fromJson(json.decode(loginDetails!));
  //   } catch (e) {
  //     print("App Preference error: ${e.toString()}");
  //   }
  //   return null;
  // }

  // Method to set login details
  Future<bool> setLoginDetails(UserDetailsData userDetailsData) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String loginDetails = json.encode(userDetailsData.toJson());
    return prefs.setString(keyLoginDetails, loginDetails);
  }


  // // Method to get login details
  // Future<String?> getLoginDetails() async {
  //   final SharedPreferences prefs = await SharedPreferences.getInstance();
  //   return prefs.getString(keyLoginDetails);
  // }

  // Method to get login details
  Future<UserDetailsData?> getLoginDetails() async {
    final SharedPreferences shared = await SharedPreferences.getInstance();
    String? userDetailsData = shared.getString(keyLoginDetails);
    if (Utils.isEmpty(userDetailsData)) {
      return null;
    }
    try {
      return UserDetailsData.fromJson(json.decode(userDetailsData!));
    } catch (e) {
      debugPrint("App Preference error: ${e.toString()}");
    }
    return null;
  }


  // Method to set isloggedin details
  Future<void> isLoggedIn({bool? value}) async {
    final SharedPreferences shared = await SharedPreferences.getInstance();
    await shared.setBool(keyIsLoggedIn, value!);
    debugPrint('isLoggedIn ::::::::::   $value');
  }

  Future<bool> getIsLoggedIn() async {
    final SharedPreferences shared = await SharedPreferences.getInstance();
    return shared.getBool(keyIsLoggedIn) ?? false;
  }

  // Method to set isloggedin details
  Future<void> isAdmin({bool? value}) async {
    final SharedPreferences shared = await SharedPreferences.getInstance();
    await shared.setBool(keyIsAdmin, value!);
    debugPrint('isLoggedIn ::::::::::   $value');
  }

  Future<bool> getIsAdmin() async {
    final SharedPreferences shared = await SharedPreferences.getInstance();
    return shared.getBool(keyIsAdmin) ?? false;
  }

  //Method to set Api Token
  Future<void> saveApiToken({String? value}) async {
    final SharedPreferences shared = await SharedPreferences.getInstance();
    shared.setString(keyApiToken, value!);
  }

  //Method to get API Token
  Future<String> getApiToken() async {
    final SharedPreferences shared = await SharedPreferences.getInstance();
    return shared.getString(keyApiToken)!;
  }


  Future<void> clearData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove(keyLoginDetails);
    // prefs.remove(keyEmail);
    prefs.remove(keyApiToken);
    // prefs.remove(keyPassword);
    prefs.remove(keyIsLoggedIn);
    // prefs.remove(keyRememberMe);
    prefs.remove(keyUserID);
    // prefs.remove(keyUserRole);
  }
}
