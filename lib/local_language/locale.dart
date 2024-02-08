import 'package:get/get_navigation/src/root/internacionalization.dart';

class MyLocale implements Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "ar": {
          "1": "الصفحة الرئيسية",
          "2": " زيادة العداد ",
          "3": "حذف التخزين"
        },
        "en": {
          "1": "Home Page",
          "2": "Counter increase",
          "3": "clear shared preference"
        },
      };
}
