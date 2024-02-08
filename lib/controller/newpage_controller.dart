import 'package:get/get.dart';

class NewPage_controller extends GetxController {
  String? currentRoute;

  @override
  void onInit() {
    currentRoute = Get.routing.current;
    super.onInit();
  }
}
