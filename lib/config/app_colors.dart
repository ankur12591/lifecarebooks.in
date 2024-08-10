import 'package:flutter/material.dart';

abstract class AppColors {
  // static const Color colorPrimary = Color(0xFF033AA5);
  // static const Color colorPrimary = Color(0xFF6A5ACD);
  // static const Color colorPrimary = Color(0xFF2E5090);
  // static const Color colorPrimary = Color(0xFF6050DC);
  // static const Color colorPrimary = Color(0xFF0E98BA);
  // static const Color colorPrimary = Color(0xFF000080);
  // static const Color colorPrimary = Color(0xFF0ABAB5);
  // static const Color colorPrimary = Color(0xFF603FEF);
  // static const Color colorPrimary = Color(0xFF06AAFF);
  static const Color colorPrimary = Color(0xFF29367C);

  static const Color pageBackground = Color(0xFFFFFFFF);
  static const Color white = Color(0xFFFFFFFF);

  // Black shade
  static const Color black = Color(0xFF000000);
  static const Color black11 = Color(0xFF111111);
  static const Color black22 = Color(0xFF222222);
  static const Color black2E = Color(0xFF2E2E2E);
  static const Color black5E = Color(0xFF5E5E5E);
  static const Color black48 = Color(0xFF484848);
  static const Color black20 = Color(0xFF1D1B20);

  // Grey shade
  static const Color grey88 = Color(0xFF888888);
  static const Color grey77 = Color(0xFF6B7177);
  static const Color greyBF = Color(0xFFBDBDBF);
  static const Color greyFB = Color(0xFFF9F9FB);
  static const Color greyD9 = Color(0xFFD9D9D9);
  static const Color greyF1 = Color(0xFFF1F1F1);
  static const Color greyF3 = Color(0xFFF3F3F3);
  static const Color greyE2 = Color(0xFFE2E2E2);
  static const Color greyD0 = Color(0xFFCAC4D0);
  static const Color greyE9 = Color(0xFFE9E9E9);
  static const Color greyAA = Color(0xFFAAAAAA);
  static const Color grey5B = Color(0xFF5B5B5B);
  static const Color grey4D = Color(0xFF4D4D4D);
  static const Color grey4D1A = Color(0x1A4D4D4D);
  static const Color greyDC = Color(0xFFDCDCDC);
  static const Color greyAE = Color(0xFFAEAEAE);
  static const Color grey6A = Color(0xFF6A6A6A);
  static const Color greyA6 = Color(0xFFA6A6A6);
  static const Color grey92 = Color(0xFF929292);
  static const Color grey4F = Color(0xFF49454F);
  static const Color grey9C = Color(0xFF9C9C9C);
  static const Color greyE6 = Color(0XFFE6E6E6);

  static const gray7A = Color(0xFF72777A); //#F7F9FA
  static const grayE5 = Color(0xFFE3E5E5);
  static const grayE6 = Color(0xFFE6E6E6);
  static const grayA5 = Color(0xFFA8A5A5);
  static const grayB5 = Color(0xFFB5B5B5);
  static const gray84 = Color(0xFF848484);
  static const grayF5= Color(0xFFF5F5F5);
  static const gray949599 = Color(0xFF949599);
  static const grayDB= Color(0xFFDBDBDB);
  static const grayf4= Color(0xFFf4f4f4);
  static const grayfb= Color(0xFFf7f6fb);
  static const gray70 = Color(0xFF707070);
  static const gray46 = Color(0xFF464848);
  static const gray62 = Color(0xFF626161);
  static const gray1C = Color(0xFF1C1B1B);

  // Blue shade
  static const Color blueFE = Color(0xFFFAFAFE);
  static const Color blueF6 = Color(0xFFE6EBF6);
  static const Color blue8ff = Color(0xFFf0f8ff);
  static const Color blueFF = Color(0xFF9BBDFF);
  static const Color blue5F6 = Color(0xFFEBF5F6);
  static const Color blueA5 = Color(0xFF033AA5);
  static const Color blue73 = Color(0x0A173673);
  static const Color blueFA = Color(0xFFF1FCFA);
  static const Color blueFFF = Color(0x0FF57DFFF);
  static const Color blueFF1A = Color(0x01A57DFFF);
  static const Color blue95 = Color(0x0FF001895);
  static const Color blue951A = Color(0x01A001895);
  static const Color blueA51A = Color(0x01A033AA5);

  // Red shade
  static const Color red00 = Color(0xFFD50000);
  static const Color red33 = Color(0xFFFF3333);
  static const Color red331A = Color(0x1AFF3333);
  static const Color redC5 = Color(0xFFC50000);

  // Orange shade
  static const Color orange33 = Color(0xFFF37933);
  static const Color orange0A = Color(0xFFAB570A);

  // Green Shade
  static const Color green00 = Color(0xFF35A600);
  static const Color green001A = Color(0x1A35A600);
  static const Color green3C = Color(0xFF03703C);

  // Purple shade
  static const Color purpleF9 = Color(0xFF995BF9);
  static const Color purpleF91A = Color(0x1A995BF9);

  static const Color purpleC4 = Color(0x1A3445C4);
  static const Color gradient1 = Color(0xFF3D1FB1);
  static const Color gradient2 = Color(0xFF3445C4);
  static const Color gradient3 = Color(0xFF1674C5);
  static const Color errorColor = Color(0xFFBA1A1A);

  //Gradient Colors
  static LinearGradient primaryGradient = const LinearGradient(
      colors: [gradient1, gradient2, gradient3], tileMode: TileMode.clamp);

  static const lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF033AA5),
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFFD6D5F4),
    onPrimaryContainer: Color(0xFF121214),
    secondary: Color(0xFF6361E9),
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFFC0BFF6),
    onSecondaryContainer: Color(0xFF101014),
    tertiary: Color(0xFF6F6DF6),
    onTertiary: Color(0xFFFFFFFF),
    tertiaryContainer: Color(0xFFEBEBFD),
    onTertiaryContainer: Color(0xFF141414),
    error: Color(0xFFBA1A1A),
    errorContainer: Color(0xFFFFDAD6),
    onError: Color(0xFFFFFFFF),
    onErrorContainer: Color(0xFF410002),
    background: Color(0xFFFAF9FD),
    onBackground: Color(0xFF090909),
    surface: Color(0xFFFAF9FD),
    onSurface: Color(0xFF090909),
    surfaceVariant: Color(0xFFE4E4EC),
    onSurfaceVariant: Color(0xFF111112),
    outline: Color(0xFF7C7C7C),
    outlineVariant: Color(0xFFC8C8C8),
    onInverseSurface: Color(0xFFF5F5F5),
    inverseSurface: Color(0xFF121216),
    inversePrimary: Color(0xFFE1E0FF),
    surfaceTint: Color(0xFF033AA5),
    shadow: Color(0xFF000000),
    scrim: Color(0xFF000000),
  );
}
