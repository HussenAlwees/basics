import 'package:get/get.dart';

class NewPage_controller extends GetxController {
  String? preRoute;

  @override
  void onInit() {
    preRoute = Get.previousRoute;
    super.onInit();
  }
}
