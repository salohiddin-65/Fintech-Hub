import 'package:fintechreal/core/widgets/pinput/src/pinput.dart' show PinTheme;
import 'package:flutter/material.dart'
    show Color, Colors, TextStyle, BoxDecoration, Border, BorderRadius;

class FintechColors {
  // Project Colors =>
  static Color whiteSmoke = const Color(0xffF4F4F4);
  static Color whiteSmoke2 = const Color(0xFFE0E0E0);
  static Color gondola = const Color(0xff241023);
  static Color butterflyBlue = const Color(0xff30A8FF);
  static Color platinum = const Color(0xffE4E4E4);
  static Color azureBlue = const Color(0xFF2196F3);
  static Color blackPearl = const Color(0xff00171f);
  static Color white = const Color(0xffffffff);
  static Color dawn = const Color(0xffA3A1A1);
  static Color flamingoPink = const Color(0xffF5ABAD);
  static Color lavaRed = const Color(0xffE31E24);
  static Color lightGrey = const Color(0xffD9D9D9);
  static Color black = const Color(0xff000000);
  static Color scampi = const Color(0xff5663A6);
  static Color grey = const Color(0xFF9E9E9E);
  static Color transparent = Colors.transparent;

  // PinPut theme
  // default
  static PinTheme defaultPintheme = PinTheme(
    textStyle: const TextStyle(fontSize: 16),
    width: 50,
    height: 50,
    decoration: BoxDecoration(
      color: FintechColors.whiteSmoke2,
      border: Border.all(color: FintechColors.platinum),
      borderRadius: BorderRadius.circular(12),
    ),
  );

  // focused
  static PinTheme focusedPinTheme = PinTheme(
    textStyle: TextStyle(color: FintechColors.white),
    width: 50,
    height: 50,
    decoration: BoxDecoration(
      color: FintechColors.scampi,
      border: Border.all(color: FintechColors.platinum),
      borderRadius: BorderRadius.circular(12),
    ),
  );

  //  error
  static PinTheme errorPinTheme = PinTheme(
    textStyle: const TextStyle(fontSize: 16),
    width: 50,
    height: 50,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: FintechColors.flamingoPink,
      border: Border.all(color: FintechColors.lavaRed),
    ),
  );
}
