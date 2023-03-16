import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray400 = fromHex('#cacaca');

  static Color black900B2 = fromHex('#b2000000');

  static Color blueGray400 = fromHex('#868686');

  static Color red600 = fromHex('#e44444');

  static Color indigoA200 = fromHex('#4470e4');

  static Color gray200 = fromHex('#e7e7e7');

  static Color gray100 = fromHex('#f2f2f2');

  static Color black900 = fromHex('#000000');

  static Color bluegray400 = fromHex('#888888');

  static Color whiteA70001 = fromHex('#ffffff');

  static Color deepOrange400 = fromHex('#e48744');

  static Color whiteA701 = fromHex('#ffffff');

  static Color whiteA700 = fromHex('#fdfdfd');

  static Color red6004c = fromHex('#4ce44444');

  static Color black90026 = fromHex('#26000000');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
