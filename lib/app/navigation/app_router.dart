import 'dart:convert';

import 'package:book_nest_life_care/app/navigation/route_arguments.dart';
import 'package:book_nest_life_care/app/navigation/routes.dart';
import 'package:book_nest_life_care/app/ui/screens/authentication/register/register_screen.dart';
import 'package:book_nest_life_care/app/ui/screens/dashboard/sub_screens/category/category.screen.dart';
import 'package:book_nest_life_care/app/ui/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../ui/change_log.dart';
import '../ui/screens/about/about.screen.dart';
import '../ui/screens/admin/admin_dashboard/admin.dashboard.screen.dart';
import '../ui/screens/authentication/forgot_password/forgot_password_screen.dart';
import '../ui/screens/authentication/login/login_screen.dart';
import '../ui/screens/dashboard/dashboard.screen.dart';
import '../ui/screens/dashboard/sub_screens/cart/cart.screen.dart';
import '../ui/screens/dashboard/sub_screens/category/sub_screens/class_books/class.books.screen.dart';
import '../ui/screens/notification/notification_list_screen.dart';
import '../ui/screens/offline/offline_device.screen.dart';
import '../ui/screens/splash/splash_screen.dart';
import '../ui/screens/unknown/invalid.screen.dart';

class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();

  static final GoRouter router = GoRouter(
    initialLocation: RoutePaths.kSplashPath,
    debugLogDiagnostics: true,
    navigatorKey: _rootNavigatorKey,
    routes: [
      /// Screen : Splash Screen
      GoRoute(
        name: Routes.kSplashScreen,
        path: RoutePaths.kSplashPath,
        builder: (BuildContext context, GoRouterState state) {
          return SplashScreen();
        },
      ),

      /// Screen : Register Screen
      GoRoute(
        name: Routes.kRegisterScreen,
        path: RoutePaths.kRegisterPath,
        builder: (BuildContext context, GoRouterState state) {
          return RegisterScreen();
        },
      ),

      /// Screen : Welcome Screen
      GoRoute(
        name: Routes.kWelcomeScreen,
        path: RoutePaths.kWelcomePath,
        builder: (BuildContext context, GoRouterState state) {
          return const WelcomeScreen();
        },
      ),

      /// Screen : Admin Dashboard Screen
      GoRoute(
        name: Routes.kAdminDashboardScreen,
        path: RoutePaths.kAdminDashboardPath,
        builder: (BuildContext context, GoRouterState state) {
          return const AdminDashboardScreen();
        },
      ),

      /// Screen: Dashboard Screen
      GoRoute(
          name: Routes.kDashboardScreen,
          path: RoutePaths.kDashboardPath,
          builder: (BuildContext context, GoRouterState state) =>
          const DashboardScreen()),

      /// Screen: Category Screen
      GoRoute(
          name: Routes.kCategoryScreen,
          path: RoutePaths.kCategoryPath,
          builder: (BuildContext context, GoRouterState state) =>
          const CategoryScreen()),

      /// Screen: ClassBooks Screen
      GoRoute(
          name: Routes.kClassBooksScreen,
          path: RoutePaths.kClassBooksPath,
          builder: (BuildContext context, GoRouterState state) =>
          const ClassBooksScreen()),

      /// Screen: Cart Screen
      GoRoute(
          name: Routes.kCartScreen,
          path: RoutePaths.kCartPath,
          builder: (BuildContext context, GoRouterState state) =>
          const CartScreen()),


      /// Screen : About Screen
      GoRoute(
          name: Routes.kAbout,
          path: RoutePaths.kAboutPath,
          builder: (BuildContext context, GoRouterState state) =>
              const AboutScreen()),

      /// Screen : Login Screen
      GoRoute(
          name: Routes.kLoginScreen,
          path: RoutePaths.kLoginPath,
          builder: (BuildContext context, GoRouterState state) =>
              LoginScreen()),

      /// Screen : Forgot Password Screen
      GoRoute(
          name: Routes.kForgotPasswordScreen,
          path: RoutePaths.kForgotPasswordPath,
          builder: (BuildContext context, GoRouterState state) =>
              ForgotPasswordScreen()),

      /// Screen: Home Screen
      // GoRoute(
      //     name: Routes.kHomeScreen,
      //     path: RoutePaths.kHomePath,
      //     builder: (BuildContext context, GoRouterState state) =>
      //         const HomeScreen()),


      /// Screen: Notifications List Screen
      GoRoute(
          name: Routes.kNotificationListScreen,
          path: RoutePaths.kNotificationListPath,
          builder: (BuildContext context, GoRouterState state) =>
              NotificationListScreen()),

      GoRoute(
          name: Routes.kChangeLog,
          path: RoutePaths.kChangeLogPath,
          builder: (BuildContext context, GoRouterState state) => ChangeLogs()),

      // Screen : Offline Screen
      GoRoute(
          name: Routes.kOffline,
          path: RoutePaths.kOfflinePath,
          builder: (BuildContext context, GoRouterState state) =>
              OfflineDeviceScreen()),
    ],
    errorBuilder: (context, state) => const InvalidScreen(),
  );
}

CustomTransitionPage buildPageWithDefaultTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionDuration: Duration.zero,
    reverseTransitionDuration: Duration.zero,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        FadeTransition(opacity: animation, child: child),
  );
}
