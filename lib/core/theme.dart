part of 'package:jlabeda_uniqcast_task/main.dart';

/// Custom theme used across the app

class UCTheme {
  static const primary = Color(0xFFFCB55F);
  static const secondary = Color(0xFFF18805);
  static const background = Color(0xFFF7F5FB);

  static const text = Color(0xFF210124);

  static const fontFamily = 'Karla';

  static ThemeData get theme => ThemeData(
        colorScheme: ColorScheme.fromSeed(
          secondary: secondary,
          seedColor: primary,
          background: background,
          surface: secondary,
          surfaceTint: Colors.transparent,
        ),
        useMaterial3: true,
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: UCStyles.title2,
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          filled: true,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            foregroundColor: const MaterialStatePropertyAll(Colors.black),
            textStyle: MaterialStatePropertyAll(UCStyles.title2),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
      );
}

extension UCStyles on TextTheme {
  static TextStyle get title1 => const TextStyle(
        fontFamily: UCTheme.fontFamily,
        color: UCTheme.text,
        fontWeight: FontWeight.w600,
        fontSize: 18,
      );
  static TextStyle get title2 => const TextStyle(
        fontFamily: UCTheme.fontFamily,
        color: UCTheme.text,
        fontWeight: FontWeight.w500,
        fontSize: 16,
      );
  static TextStyle get body => const TextStyle(
        height: 1.5,
        fontFamily: UCTheme.fontFamily,
        color: UCTheme.text,
        fontSize: 12,
      );
  static TextStyle get subtitle => const TextStyle(
        fontFamily: UCTheme.fontFamily,
        color: UCTheme.text,
        fontSize: 10,
      );
}
