part of 'package:jlabeda_uniqcast_task/main.dart';

/// Custom theme used across the app

class UCTheme {
  static const primary = Color(0xFF3C493F);
  static const secondary = Color(0xFF7E8D85);
  static const background = Color(0xFFB3BfB8);

  static const strong = Color.fromRGBO(0, 0, 0, 0.8);
  static const medium = Color.fromRGBO(0, 0, 0, 0.4);
  static const light = Color.fromRGBO(0, 0, 0, 0.2);

  static const fontFamily = 'Karla';

  static ThemeData get theme => ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: primary,
          background: background,
          surface: secondary,
          surfaceTint: Colors.transparent,
        ),
        useMaterial3: false,
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          filled: true,
          contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        ),
      );
}

extension UCStyles on TextTheme {
  TextStyle get title1 => const TextStyle(
        fontFamily: UCTheme.fontFamily,
        color: UCTheme.strong,
        fontWeight: FontWeight.w600,
        fontSize: 18,
      );
  TextStyle get title2 => const TextStyle(
        fontFamily: UCTheme.fontFamily,
        color: UCTheme.strong,
        fontWeight: FontWeight.w500,
        fontSize: 16,
      );
  TextStyle get title3 => const TextStyle(
        fontFamily: UCTheme.fontFamily,
        color: UCTheme.strong,
        fontSize: 16,
      );
  TextStyle get body => const TextStyle(
        height: 1.5,
        fontFamily: UCTheme.fontFamily,
        color: UCTheme.medium,
        fontSize: 12,
      );
  TextStyle get input => const TextStyle(
        fontFamily: UCTheme.fontFamily,
        color: UCTheme.medium,
        fontSize: 12,
      );
  TextStyle get hint => const TextStyle(
        fontFamily: UCTheme.fontFamily,
        color: UCTheme.light,
        fontSize: 12,
      );
  TextStyle get subtitle => const TextStyle(
        fontFamily: UCTheme.fontFamily,
        color: UCTheme.medium,
        fontSize: 10,
      );
  TextStyle get detail => const TextStyle(
        fontFamily: UCTheme.fontFamily,
        color: UCTheme.medium,
        fontSize: 12,
      );
}
