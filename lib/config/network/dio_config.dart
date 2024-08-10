import 'package:book_nest_life_care/app/db/app_preferences.dart';
import 'package:book_nest_life_care/config/back4app_constants.dart';
import 'package:book_nest_life_care/utils/custom_widgets/overlay_loading_progress.dart';
import 'package:book_nest_life_care/utils/ui_components.dart';
import 'package:dio/dio.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../app_strings.dart';
import '../flavor_config.dart';

class DioProvider {
  static final DioProvider _instance = DioProvider._internal();

  static DioProvider get instance => _instance;

  factory DioProvider() => _instance;

  DioProvider._internal();

  late Dio mDio;

  AppPreferences appPreferences = AppPreferences();
  var fcmToken = '';

  Future<String> getAuthToken() async {
    String token = await appPreferences.getApiToken();
    printf("Auth token: $token");
    return token;
  }

  void initialise() {
    mDio = Dio(
      BaseOptions(
          baseUrl: FlavorConfig.instance.values.baseUrl,
          connectTimeout: const Duration(seconds: 2900),
          receiveTimeout: const Duration(seconds: 3000),
          receiveDataWhenStatusError: true,
          headers: {
            keyHeaderApplicationId : Back4appConstants.keyApplicationId, // Replace with your Application ID
            'X-Parse-REST-API-Key': Back4appConstants.keyRestAPIKey,
            "X-Parse-Master-Key": Back4appConstants.keyMasterKey,
            'Content-Type': 'application/json',
            'accept': 'application/json',
          }),
    );
    mDio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        request: true));
  }

  /// Get base API.
  Future<Response> getBaseAPI(
      {required String url, Map<String, dynamic>? queryParams}) async {
    try {
      return await mDio.get(url, queryParameters: queryParams);
    } on DioException catch (ex) {
      if (ex.type == DioExceptionType.badResponse) {
        // Parse the response data to get the message string
        String message =
            ex.response?.data['message'] ?? 'Unknown error occurred';
        // printf(" Message-----------${message}");

        return Response(
            data: message,
            statusMessage: message,
            statusCode: ex.response?.statusCode ?? 500,
            requestOptions: RequestOptions());
      } else if (ex.type == DioExceptionType.connectionError) {
        OverlayLoadingProgress.stop();
        // Parse the response data to get the message string
        String message = 'No internet connection !';
        // printf(" Message-----------${message}");

        return Response(
            data: message,
            statusMessage: message,
            statusCode: ex.response?.statusCode ?? 500,
            requestOptions: RequestOptions());
      } else if (ex.type == DioExceptionType.unknown) {
        // Parse the response data to get the message string
        String message = 'Oops something went wrong !';
        // printf(" Message-----------${message}");

        return Response(
            data: message,
            statusMessage: message,
            statusCode: ex.response?.statusCode ?? 500,
            requestOptions: RequestOptions());
      } else if (ex.type == DioExceptionType.connectionTimeout) {
        return Response(
            data: AppStrings.connectionTimeoutMessage,
            statusMessage: AppStrings.connectionTimeoutMessage,
            statusCode: 500,
            requestOptions: RequestOptions());
      }
      return Response(
          data: ex.message,
          statusMessage: ex.message,
          statusCode: 500,
          requestOptions: RequestOptions());
    }
  }

  /// Post base API.
  Future<Response> postBaseAPI({required String url, dynamic data}) async {
    try {
      return await mDio.post(url, data: data);
    } on DioException catch (ex) {
      OverlayLoadingProgress.stop();
      if (ex.type == DioExceptionType.badResponse) {
        // Parse the response data to get the message string
        String message =
            ex.response?.data['message'] ?? 'Unknown error occurred';
        // printf(" Message-----------${message}");

        return Response(
            data: message,
            statusMessage: message,
            statusCode: ex.response?.statusCode ?? 500,
            requestOptions: RequestOptions());
      } else if (ex.type == DioExceptionType.connectionError) {
        // Parse the response data to get the message string
        String message = 'No internet connection !';
        // printf(" Message-----------${message}");

        return Response(
            data: message,
            statusMessage: message,
            statusCode: ex.response?.statusCode ?? 500,
            requestOptions: RequestOptions());
      } else if (ex.type == DioExceptionType.unknown) {
        // Parse the response data to get the message string
        String message = 'Oops something went wrong !';
        // printf(" Message-----------${message}");

        return Response(
            data: message,
            statusMessage: message,
            statusCode: ex.response?.statusCode ?? 500,
            requestOptions: RequestOptions());
      } else if (ex.type == DioExceptionType.connectionTimeout) {
        return Response(
            data: AppStrings.connectionTimeoutMessage,
            statusMessage: AppStrings.connectionTimeoutMessage,
            statusCode: 500,
            requestOptions: RequestOptions());
      }
      return Response(
          data: ex.message,
          statusMessage: ex.message,
          statusCode: 500,
          requestOptions: RequestOptions());
    }
  }

  /// POST base API with headers
  Future<Response> postBaseAPIWithMobile(
      {required String url, dynamic data}) async {
    try {
      // Create RequestOptions and set the headers, including the API token
      Options requestOptions = Options(
        headers: {
        },
      );
      return await mDio.post(
        url,
        data: data,
        options: requestOptions,
      );
    } on DioException catch (ex) {
      OverlayLoadingProgress.stop();
      if (ex.type == DioExceptionType.badResponse) {
        // Parse the response data to get the message string
        String message =
            ex.response?.data['message'] ?? 'Unknown error occurred';
        // printf(" Message-----------${message}");

        return Response(
            data: message,
            statusMessage: message,
            statusCode: ex.response?.statusCode ?? 500,
            requestOptions: RequestOptions());
      } else if (ex.type == DioExceptionType.connectionError) {
        // Parse the response data to get the message string
        String message = 'No internet connection !';
        // printf(" Message-----------${message}");

        return Response(
            data: message,
            statusMessage: message,
            statusCode: ex.response?.statusCode ?? 500,
            requestOptions: RequestOptions());
      } else if (ex.type == DioExceptionType.unknown) {
        // Parse the response data to get the message string
        String message = 'Oops something went wrong !';
        // printf(" Message-----------${message}");

        return Response(
            data: message,
            statusMessage: message,
            statusCode: ex.response?.statusCode ?? 500,
            requestOptions: RequestOptions());
      } else if (ex.type == DioExceptionType.connectionTimeout) {
        return Response(
            data: AppStrings.connectionTimeoutMessage,
            statusMessage: AppStrings.connectionTimeoutMessage,
            statusCode: 500,
            requestOptions: RequestOptions());
      }
      return Response(
          data: ex.message,
          statusMessage: ex.message,
          statusCode: 500,
          requestOptions: RequestOptions());
    }
  }

  /// POST base API with Token.
  Future<Response> postBaseAPIWithToken(
      {required String url,
        dynamic data,
        Map<String, dynamic>? queryParameters,
        bool? isExceptionNeeded = false}) async {
    try {
      // Create RequestOptions and set the headers, including the API token
      Options requestOptions = Options(
        headers: {
          "Authorization": "Bearer ${await getAuthToken()}",
        },
      );
      return await mDio.post(
        url,
        data: data,
        options: requestOptions,
      );
    } on DioException catch (ex) {
      OverlayLoadingProgress.stop();
      if (ex.type == DioExceptionType.badResponse) {
        // Parse the response data to get the message string
        String message =
            ex.response?.data['message'] ?? 'Unknown error occurred';
        return Response(
            data: isExceptionNeeded ?? false ? ex.response?.data : message,
            statusMessage: message,
            statusCode: ex.response?.statusCode ?? 500,
            requestOptions: RequestOptions());
      } else if (ex.type == DioExceptionType.connectionTimeout) {
        return Response(
            data: AppStrings.connectionTimeoutMessage,
            statusMessage: AppStrings.connectionTimeoutMessage,
            statusCode: 500,
            requestOptions: RequestOptions());
      } else if (ex.type == DioExceptionType.connectionError) {
        // Parse the response data to get the message string
        String message = 'No internet connection !';
        return Response(
            data: message,
            statusMessage: message,
            statusCode: ex.response?.statusCode ?? 500,
            requestOptions: RequestOptions());
      } else if (ex.type == DioExceptionType.unknown) {
        // Parse the response data to get the message string
        String message = 'Oops something went wrong !';
        // printf(" Message-----------${message}");

        return Response(
            data: message,
            statusMessage: message,
            statusCode: ex.response?.statusCode ?? 500,
            requestOptions: RequestOptions());
      } else {
        return Response(
            data: ex.message,
            statusMessage: ex.message,
            statusCode: 500,
            requestOptions: RequestOptions());
      }
    }
  }

  /// GET base API with token.
  Future<Response> getBaseAPIWithToken(
      {required String url, Map<String, dynamic>? queryParams}) async {
    try {
      // Create RequestOptions and set the headers, including the API token
      Options requestOptions = Options(
        headers: {
          "Authorization": "Bearer ${await getAuthToken()}",
        },
      );
      return await mDio.get(
        url,
        queryParameters: queryParams,
        options: requestOptions,
      );
    } on DioException catch (ex) {
      OverlayLoadingProgress.stop();
      if (ex.type == DioExceptionType.badResponse) {
        // Parse the response data to get the message string
        String message =
            ex.response?.data?['message'] ?? 'Unknown error occurred';
        // printf(" Message-----------${message}");

        return Response(
            data: message,
            statusMessage: message,
            statusCode: ex.response?.statusCode ?? 500,
            requestOptions: RequestOptions());
      } else if (ex.type == DioExceptionType.connectionError) {
        // Parse the response data to get the message string
        String message = 'No internet connection !';
        // printf(" Message-----------${message}");

        return Response(
            data: message,
            statusMessage: message,
            statusCode: ex.response?.statusCode ?? 500,
            requestOptions: RequestOptions());
      } else if (ex.type == DioExceptionType.unknown) {
        // Parse the response data to get the message string
        String message = 'Oops something went wrong !';
        // printf(" Message-----------${message}");

        return Response(
            data: message,
            statusMessage: message,
            statusCode: ex.response?.statusCode ?? 500,
            requestOptions: RequestOptions());
      } else if (ex.type == DioExceptionType.unknown) {
        // Parse the response data to get the message string
        String message = 'Oops something went wrong !';
        // printf(" Message-----------${message}");

        return Response(
            data: message,
            statusMessage: message,
            statusCode: ex.response?.statusCode ?? 500,
            requestOptions: RequestOptions());
      } else if (ex.type == DioExceptionType.connectionTimeout) {
        return Response(
            data: AppStrings.connectionTimeoutMessage,
            statusMessage: AppStrings.connectionTimeoutMessage,
            statusCode: 500,
            requestOptions: RequestOptions());
      }
      return Response(
          data: ex.message,
          statusMessage: ex.message,
          statusCode: 500,
          requestOptions: RequestOptions());
    }
  }

  /// PATCH base API with Token.
  Future<Response> patchBaseAPIWithToken(
      {required String url,
        dynamic data,
        Map<String, dynamic>? queryParameters,
        required String id}) async {
    try {
      // Create RequestOptions and set the headers, including the API token
      Options requestOptions = Options(
        headers: {
          "Authorization": "Bearer ${await getAuthToken()}",
        },
      );
      return await mDio.patch(
        url + id,
        data: data,
        options: requestOptions,
      );
    } on DioException catch (ex) {
      OverlayLoadingProgress.stop();
      if (ex.type == DioExceptionType.badResponse) {
        // Parse the response data to get the message string
        String message =
            ex.response?.data['message'] ?? 'Unknown error occurred';
        // printf(" Message-----------${message}");

        return Response(
            data: message,
            statusMessage: message,
            statusCode: ex.response?.statusCode ?? 500,
            requestOptions: RequestOptions());
      } else if (ex.type == DioExceptionType.connectionError) {
        // Parse the response data to get the message string
        String message = 'No internet connection !';
        // printf(" Message-----------${message}");

        return Response(
            data: message,
            statusMessage: message,
            statusCode: ex.response?.statusCode ?? 500,
            requestOptions: RequestOptions());
      } else if (ex.type == DioExceptionType.unknown) {
        // Parse the response data to get the message string
        String message = 'Oops something went wrong !';
        // printf(" Message-----------${message}");

        return Response(
            data: message,
            statusMessage: message,
            statusCode: ex.response?.statusCode ?? 500,
            requestOptions: RequestOptions());
      } else if (ex.type == DioExceptionType.connectionTimeout) {
        return Response(
            data: AppStrings.connectionTimeoutMessage,
            statusMessage: AppStrings.connectionTimeoutMessage,
            statusCode: 500,
            requestOptions: RequestOptions());
      }
      return Response(
          data: ex.message,
          statusMessage: ex.message,
          statusCode: 500,
          requestOptions: RequestOptions());
    }
  }

  /// PUT base API with Token.
  Future<Response> putBaseAPIWithToken(
      {required String url,
        dynamic data,
        Map<String, dynamic>? queryParameters,
      }) async {
    try {
      // Create RequestOptions and set the headers, including the API token
      Options requestOptions = Options(
        headers: {
          "Authorization": "Bearer ${await getAuthToken()}",
        },
      );
      return await mDio.put(
        url,
        data: data,
        options: requestOptions,
      );
    } on DioException catch (ex) {
      OverlayLoadingProgress.stop();
      if (ex.type == DioExceptionType.badResponse) {
        // Parse the response data to get the message string
        String message =
            ex.response?.data['message'] ?? 'Unknown error occurred';
        // printf(" Message-----------${message}");

        return Response(
            data: message,
            statusMessage: message,
            statusCode: ex.response?.statusCode ?? 500,
            requestOptions: RequestOptions());
      } else if (ex.type == DioExceptionType.connectionError) {
        // Parse the response data to get the message string
        String message = 'No internet connection !';
        // printf(" Message-----------${message}");

        return Response(
            data: message,
            statusMessage: message,
            statusCode: ex.response?.statusCode ?? 500,
            requestOptions: RequestOptions());
      } else if (ex.type == DioExceptionType.unknown) {
        // Parse the response data to get the message string
        String message = 'Oops something went wrong !';
        // printf(" Message-----------${message}");

        return Response(
            data: message,
            statusMessage: message,
            statusCode: ex.response?.statusCode ?? 500,
            requestOptions: RequestOptions());
      } else if (ex.type == DioExceptionType.connectionTimeout) {
        return Response(
            data: AppStrings.connectionTimeoutMessage,
            statusMessage: AppStrings.connectionTimeoutMessage,
            statusCode: 500,
            requestOptions: RequestOptions());
      }
      return Response(
          data: ex.message,
          statusMessage: ex.message,
          statusCode: 500,
          requestOptions: RequestOptions());
    }
  }

  /// DELETE base API with token.
  Future<Response> deleteBaseAPIWithToken(
      {required String url,
        Map<String, dynamic>? queryParams,
        required String id}) async {
    try {
      // Create RequestOptions and set the headers, including the API token
      Options requestOptions = Options(
        headers: {
          "Authorization": "Bearer ${await getAuthToken()}",
        },
      );
      return await mDio.delete(
        url + id,
        queryParameters: queryParams,
        options: requestOptions,
      );
    } on DioException catch (ex) {
      OverlayLoadingProgress.stop();
      if (ex.type == DioExceptionType.badResponse) {
        // Parse the response data to get the message string
        String message =
            ex.response?.data['message'] ?? 'Unknown error occurred';
        // printf(" Message-----------${message}");

        return Response(
            data: message,
            statusMessage: message,
            statusCode: ex.response?.statusCode ?? 500,
            requestOptions: RequestOptions());
      } else if (ex.type == DioExceptionType.connectionError) {
        // Parse the response data to get the message string
        String message = 'No internet connection !';
        // printf(" Message-----------${message}");

        return Response(
            data: message,
            statusMessage: message,
            statusCode: ex.response?.statusCode ?? 500,
            requestOptions: RequestOptions());
      } else if (ex.type == DioExceptionType.unknown) {
        // Parse the response data to get the message string
        String message = 'Oops something went wrong !';
        // printf(" Message-----------${message}");

        return Response(
            data: message,
            statusMessage: message,
            statusCode: ex.response?.statusCode ?? 500,
            requestOptions: RequestOptions());
      } else if (ex.type == DioExceptionType.unknown) {
        // Parse the response data to get the message string
        String message = 'Oops something went wrong !';
        // printf(" Message-----------${message}");

        return Response(
            data: message,
            statusMessage: message,
            statusCode: ex.response?.statusCode ?? 500,
            requestOptions: RequestOptions());
      } else if (ex.type == DioExceptionType.connectionTimeout) {
        return Response(
            data: AppStrings.connectionTimeoutMessage,
            statusMessage: AppStrings.connectionTimeoutMessage,
            statusCode: 500,
            requestOptions: RequestOptions());
      }
      return Response(
          data: ex.message,
          statusMessage: ex.message,
          statusCode: 500,
          requestOptions: RequestOptions());
    }
  }
}
