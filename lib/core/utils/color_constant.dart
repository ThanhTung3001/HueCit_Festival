import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color whiteA7007f = fromHex('#7fffffff');

  static Color black9007f = fromHex('#7f000000');

  static Color whiteA700B2 = fromHex('#b2ffffff');

  static Color black900B2 = fromHex('#b2240507');

  static Color red900 = fromHex('#b61b23');

  static Color black9001e = fromHex('#1e000000');

  static Color whiteA700Cc = fromHex('#ccffffff');

  static Color black90001 = fromHex('#000000');

  static Color black90066 = fromHex('#66240507');

  static Color black90000 = fromHex('#00000000');

  static Color amberA700 = fromHex('#eba900');

  static Color black900 = fromHex('#240507');

  static Color teal800 = fromHex('#007543');

  static Color black9006601 = fromHex('#66000000');

  static Color black901 = fromHex('#000000');

  static Color gray20066 = fromHex('#66e8ebed');

  static Color amber40033 = fromHex('#33ffc020');

  static Color black9004c = fromHex('#4c240507');

  static Color whiteA7004c = fromHex('#4cffffff');

  static Color amber400 = fromHex('#ffc020');

  static Color gray900 = fromHex('#5b0e12');

  static Color gray90001 = fromHex('#40090c');

  static Color amber200 = fromHex('#ffdf8f');

  static Color gray200 = fromHex('#e8ebed');

  static Color orange50 = fromHex('#fff2d2');

  static Color black90099 = fromHex('#99000000');

  static Color black900B201 = fromHex('#b2000000');

  static Color bluegray400 = fromHex('#888888');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
