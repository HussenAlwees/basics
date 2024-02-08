import 'package:get/get.dart';

class NewPage_controller extends GetxController {
  String? name;
  int? age;

  @override
  void onInit() {
    name = Get.arguments['name'];
    age = Get.arguments['age'];
    super.onInit();
  }
}
