import 'package:book_nest_life_care/app/bloc/product_cubit.dart';

// import 'package:book_nest_life_care/app/repository/regional_repository.dart';
import 'package:book_nest_life_care/app/repository/role_repository.dart';
import 'package:book_nest_life_care/app/ui/screens/authentication/register/cubit/register_cubit.dart';

// import 'package:book_nest_life_care/app/repository/upload_files_repository.dart';
import 'package:book_nest_life_care/app/ui/screens/dashboard/cubit/dashboard_cubit.dart';
import 'package:book_nest_life_care/app/ui/screens/notification/cubit/notification_list_cubit.dart';
import 'package:book_nest_life_care/app/ui/screens/welcome/cubit/welcome_cubit.dart';
import 'package:book_nest_life_care/config/app_colors.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_it/get_it.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:month_year_picker/month_year_picker.dart';

import 'app/bloc/application_cubit.dart';
import 'app/db/app_preferences.dart';
import 'app/navigation/app_router.dart';

// import 'app/repository/authentication_repository.dart';
import 'app/repository/authentication_repository.dart';
import 'app/repository/school_data_repository.dart';
import 'app/ui/custom_widget/custom_bottom_nav_bar/custom_bottom_nav_bar_cubit.dart';
import 'app/ui/screens/admin/admin_dashboard/cubit/admin_dashboard_cubit.dart';
import 'app/ui/screens/authentication/forgot_password/cubit/forgot_password_cubit.dart';
import 'app/ui/screens/authentication/login/cubit/login_cubit.dart';
import 'app/ui/screens/dashboard/sub_screens/cart/cubit/cart_cubit.dart';
import 'app/ui/screens/dashboard/sub_screens/category/cubit/category_cubit.dart';
import 'app/ui/screens/dashboard/sub_screens/category/sub_screens/class_books/cubit/class_books_cubit.dart';
import 'app/ui/screens/dashboard/sub_screens/home/cubit/home_cubit.dart';
import 'app/ui/screens/splash/cubit/splash_cubit.dart';
import 'config/flavor_config.dart';
import 'config/network/app_connectivity.dart';
import 'config/network/dio_config.dart';
import 'config/network/graphql_service.dart';
import 'config/text_styles.dart';

class Application extends StatefulWidget {
  Application({super.key});

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  final AppConnectivity _connectivity = AppConnectivity.instance;
  Map _source = {ConnectivityResult.none: false};

  @override
  void initState() {
    super.initState();
    _connectivity.initialise();
    _connectivity.myStream.listen((source) {
      setState(() => _source = source);
    });
  }

  @override
  Widget build(BuildContext context) {
    final isNetworkAvailable =
        _source.keys.toList()[0] != ConnectivityResult.none;
    return FutureBuilder(
        future: setupLocator(),
        builder: (context, _) {
          return MultiBlocProvider(
            providers: [
              BlocProvider(
                  create: (BuildContext context) => ApplicationCubit()),
              BlocProvider(create: (BuildContext context) => SplashCubit()),
              BlocProvider(
                  create: (BuildContext context) => RegisterCubit(
                        repository: GetIt.I<AuthenticationRepository>(),
                      )),
              BlocProvider(
                  create: (BuildContext context) => WelcomeCubit(
                        repository: GetIt.I<AuthenticationRepository>(),
                      )),
              BlocProvider(
                  create: (BuildContext context) => AdminDashboardCubit(
                        repository: GetIt.I<AuthenticationRepository>(),
                      )),
              BlocProvider(create: (BuildContext context) => DashboardCubit()),
              BlocProvider(
                  create: (BuildContext context) => HomeCubit(
                        repository: GetIt.I<RoleRepository>(),
                      )),
              BlocProvider(
                  create: (BuildContext context) => CategoryCubit(
                        repository: GetIt.I<SchoolDataRepository>(),
                      )),
              BlocProvider(create: (BuildContext context) => ClassBooksCubit()),
              BlocProvider(create: (BuildContext context) => CartCubit()),
              BlocProvider(create: (BuildContext context) => ProductCubit()),
              BlocProvider(
                  create: (BuildContext context) => LoginCubit(
                      // repository: GetIt.I<AuthenticationRepository>(),
                      roleRepository: GetIt.I<RoleRepository>())),
              BlocProvider(
                  create: (BuildContext context) => ForgotPasswordCubit(
                      // repository: GetIt.I<AuthenticationRepository>()
                      )),
              BlocProvider(
                  create: (BuildContext context) => NotificationListCubit()),
            ],
            child: GraphQLProvider(
              client: GraphQLService().client,
              child: MaterialApp.router(
                theme: ThemeData(
                  scaffoldBackgroundColor: AppColors.white,
                  appBarTheme: AppBarTheme(
                    color: AppColors.colorPrimary,
                    titleTextStyle: h24(color: AppColors.white),
                  ),
                  // expansionTileTheme: ExpansionTileThemeData(),
                  dividerColor: Colors.transparent,
                  // canvasColor: AppColors.white,
                  primarySwatch: Colors.blue,
                  bottomSheetTheme: const BottomSheetThemeData(
                    backgroundColor: AppColors.white,
                    surfaceTintColor: AppColors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(10.0)),
                    ),
                  ),
                  floatingActionButtonTheme:
                      const FloatingActionButtonThemeData(
                          backgroundColor: AppColors.colorPrimary,
                          shape: CircleBorder()),
                  // drawerTheme: DrawerThemeData(),
                  navigationBarTheme: NavigationBarThemeData(
                    elevation: 6,
                    backgroundColor: AppColors.pageBackground,
                    surfaceTintColor: AppColors.pageBackground,
                    labelTextStyle:
                        MaterialStateProperty.resolveWith<TextStyle>(
                            (Set<MaterialState> states) =>
                                states.contains(MaterialState.selected)
                                    ? h12().copyWith(
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.colorPrimary)
                                    : h12().copyWith(
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.black2E)),
                  ),

                  datePickerTheme: DatePickerThemeData(
                    backgroundColor: AppColors.white,
                    // Set background color
                    elevation: 8.0,
                    // Set elevation (shadow effect)
                    shadowColor: Colors.grey.withOpacity(0.5),
                    // Set shadow color

                    // Surface properties
                    surfaceTintColor: AppColors.white,
                    // Set surface tint color

                    // Shape property
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(10.0), // Set border radius
                    ),

                    // Header properties
                    headerBackgroundColor: AppColors.colorPrimary,
                    // Set header background color
                    headerForegroundColor: AppColors.white,
                    // Set header text color
                    headerHeadlineStyle: h18(),
                    headerHelpStyle:
                        h12().copyWith(color: Colors.grey.shade600),

                    // Weekday and day styles
                    weekdayStyle:
                        h16().copyWith(color: AppColors.black.withOpacity(0.7)),
                    dayStyle: h14(),

                    dayBackgroundColor:
                        MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.selected)) {
                        return AppColors
                            .colorPrimary; // Set primary color for selected state
                      } else {
                        return Colors
                            .transparent; // Set transparent background for non-selected state
                      }
                    }),
                    todayBackgroundColor:
                        MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.selected)) {
                        return AppColors
                            .colorPrimary; // Set primary color for selected state
                      } else {
                        return Colors
                            .transparent; // Set transparent background for non-selected state
                      }
                    }),
                    todayBorder: const BorderSide(
                        color: AppColors.colorPrimary, width: 2.0),
                    dividerColor: Colors.grey.shade200,
                    // Set divider color
                    inputDecorationTheme: InputDecorationTheme(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            10.0), // Set border radius for input field
                      ),
                    ),
                    cancelButtonStyle: TextButton.styleFrom(
                      foregroundColor: AppColors
                          .colorPrimary, // Set cancel button text color
                    ),
                    confirmButtonStyle: TextButton.styleFrom(
                      foregroundColor: AppColors
                          .colorPrimary, // Set confirm button text color
                    ),
                  ),
                ),
                // locale: state.selectedLanguage.value,
                localizationsDelegates: const [
                  GlobalWidgetsLocalizations.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                  MonthYearPickerLocalizations.delegate,
                ],
                // supportedLocales: AppLocalizations.supportedLocales,
                routeInformationParser: AppRouter.router.routeInformationParser,
                routerDelegate: AppRouter.router.routerDelegate,
                routeInformationProvider:
                    AppRouter.router.routeInformationProvider,
                debugShowCheckedModeBanner: false,
                title: FlavorConfig.instance.name,
              ),
            ),
          );
        });
  }

  /// Setup locator
  Future<void> setupLocator() async {
    GetIt getIt = GetIt.I;




    getIt.registerSingleton<AuthenticationRepository>(
        AuthenticationRepositoryImpl());

    // Register AppPreferences
    if (!GetIt.instance.isRegistered<AppPreferences>()) {
      getIt.registerSingleton<AppPreferences>(AppPreferences());
    }

    // getIt.registerSingleton<AppPreferences>(AppPreferences());



    getIt.registerSingleton<GraphQLService>(GraphQLService());




    getIt.registerSingleton<SchoolDataRepository>(SchoolDataRepositoryImpl());
    // getIt.registerSingleton<RegionalRepository>(RegionalRepositoryImpl());
    // getIt.registerSingleton<UploadFileRepository>(UploadFileRepositoryImpl());
    getIt.registerSingleton<RoleRepository>(RoleRepositoryImpl());
    getIt.registerSingleton<DioProvider>(DioProvider());

    if (!GetIt.instance.isRegistered<AppPreferences>()) {
      getIt.registerSingleton<AppPreferences>(AppPreferences());
    }

    /// Initialise dio provider
    getIt<DioProvider>().initialise();
  }
}
