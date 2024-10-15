// Place fonts/iconData.ttf in your fonts/ directory and
// add the following to your pubspec.yaml
// flutter:
//   fonts:
//    - family: iconData
//      fonts:
//       - asset: fonts/iconData.ttf
import 'package:flutter/widgets.dart';

class CustomIcon {
  CustomIcon._();

  static const String _fontFamily = 'CustomIcon';

  static const IconData box = IconData(0xe900, fontFamily: _fontFamily);
  static const IconData card_tick = IconData(0xe901, fontFamily: _fontFamily);
  static const IconData category_2 = IconData(0xe902, fontFamily: _fontFamily);
  static const IconData document_text = IconData(0xe903, fontFamily: _fontFamily);
  static const IconData heart = IconData(0xe904, fontFamily: _fontFamily);
  static const IconData home_2 = IconData(0xe905, fontFamily: _fontFamily);
  static const IconData lock = IconData(0xe906, fontFamily: _fontFamily);
  static const IconData logout = IconData(0xe907, fontFamily: _fontFamily);
  static const IconData message_question = IconData(0xe908, fontFamily: _fontFamily);
  static const IconData mobile = IconData(0xe909, fontFamily: _fontFamily);
  static const IconData receipt_edit = IconData(0xe90a, fontFamily: _fontFamily);
  static const IconData shield_tick = IconData(0xe90b, fontFamily: _fontFamily);
  static const IconData shopping_cart = IconData(0xe90c, fontFamily: _fontFamily);
}
