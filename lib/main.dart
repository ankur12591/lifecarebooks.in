import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';


import 'application.dart';
import 'config/flavor_config.dart';
import 'config/network/http_override.dart';
import 'config/network/network_constants.dart';

void main() async {
  // await dotenv.load(fileName: ".env");

  HttpOverrides.global = MyHttpOverrides();
  FlavorConfig(
      flavor: Flavor.QA,
      color: Colors.black,
      values: FlavorValues(baseUrl: NetworkConstants.kDevelopment));

  // Ensure all services are loaded before app is started
  WidgetsFlutterBinding.ensureInitialized();

  const keyApplicationId = '5aomP92KjLSMP4fVdi46ZAZpqZiFiAagbTm3cA2L';
  const keyClientKey = 'HAxmRHDmUyO0TOWPb2hnSHOdmNZsAqfTaUkyYOgv';
  const keyParseServerUrl = 'https://parseapi.back4app.com';

  await Parse().initialize(
    keyApplicationId,
    keyParseServerUrl,
    clientKey: keyClientKey,
    autoSendSessionId: true,
    debug: true,
  );

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    systemNavigationBarColor: Colors.white,
    statusBarBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarIconBrightness: Brightness.dark,
  ));

  runApp(Application());
}
