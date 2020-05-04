import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


extension ThemeDataExtension on ThemeData {
  // DEFINE ALL APP COLORS
  Color get _fBlueColor1 => const Color(0xFF92D0FD);
  Color get _fBlueColor2 => const Color(0xFF43AAF7);
  Color get _fBlueColor3 => const Color(0xFF45AEFC);
  Color get _fBlueColor4 => const Color(0xFF4E81CC);
  Color get _fBlueColor5 => const Color(0xFF0A559B); // OK: fPrimaryColor
  Color get _fBlueColor6 => const Color(0xFF23577E);
  Color get _fBlueColor7 => const Color(0xFF1D2F4E);
  Color get _fBlueColor8 => const Color(0xFF1B2844);
  Color get fWhiteColorF => const Color(0x00FFFFFF);
  Color get fWhiteColorS => const Color(0xFFFFFFFF);
  Color get _fGreyColor1 => const Color(0xFFF9F9F9);
  Color get _fGreyColor2 => const Color(0xFFCECECE);
  Color get _fGreyColor3 => const Color(0xFFB5B5B5);
  Color get _fGreyColor4 => const Color(0xFF3C3C3C);
  Color get _fGreyColor5 => const Color(0xFF272727);
  Color get fBlackColorE => const Color(0x0D000000);
  Color get fBlackColorD => const Color(0x29000000);
  Color get fBlackColorC => const Color(0x31000000);
  Color get fBlackColorB => const Color(0x55000000);
  Color get fBlackColorA => const Color(0x7B000000);
  Color get fBlackColorS => const Color(0xFF000000);
  Color get fLightGreen => const Color(0xFF25E2B1);


  // TODO: Colors defined and named
  // Rename the color here by use, add a comment to the right of the color as follows: "// OK: fPrimaryColor" and make it private when using
  // Write a dart doc for the color with @TODO for the image or use ![LightShot](app.prntscr.com)
  // Use nomenclature `f$THATMAKES$WHATITIS`
  //  -> f to say it is Flutterando 
  //  -> $THATMAKES = Primary
  //  -> $WHATITIS = Color
  // likes a `fPrimaryColor`
  // 


  ///
  /// ```dart
  /// var fPrimaryColor = theme.fPrimarySwatch[500];
  /// ```
  ///
  /// ![](https://prnt.sc/saf4jj/direct|width=300)
  ///
  Color get fPrimaryColor => this._fBlueColor5;

  ///
  /// ```dart
  /// var fPrimaryColor = theme.fPrimarySwatch; // Default Value
  /// var fPrimaryColor = theme.fPrimarySwatch[500]; // Default Value
  /// ```
  ///
  /// ![](https://prnt.sc/saf3vx/direct|width=300)
  ///
  MaterialColor get fPrimarySwatch =>
      MaterialColor(this._fBlueColor5.value, <int, Color>{
        100: this._fBlueColor1,
        200: this._fBlueColor2,
        300: this._fBlueColor3,
        400: this._fBlueColor4,
        500: this._fBlueColor5,
        600: this._fBlueColor6,
        700: this._fBlueColor7,
        800: this._fBlueColor8,
      });

  ///
  /// ```dart
  /// var fGreyColor = theme.fGreySwatch; // Default Value
  /// var fGreyColor = theme.fGreySwatch[300]; // Default Value
  /// ```
  ///
  /// ![](https://prnt.sc/safj7a/direct|width=300)
  ///
  MaterialColor get fGreySwatch =>
      MaterialColor(this._fGreyColor3.value, <int, Color>{
        100: this._fGreyColor1,
        200: this._fGreyColor2,
        300: this._fGreyColor3,
        400: this._fGreyColor4,
        500: this._fGreyColor5,
      });

  ///
  /// Default Theme for use in Flutterando Website
  ///
  /// For use
  ///  - `import 'package:flutter_web_site/app/shared/shared.dart';`
  /// 
  ///  - `Theme.of(context).fPrimaryColor`
  ///
  /// Import in Material app `ThemeData().fTheme()`
  ///
  ThemeData fTheme() {
    return ThemeData.dark().copyWith(
      primaryColor: this.fPrimaryColor,
      textTheme: GoogleFonts.firaCodeTextTheme(),
    );
  }
}
