import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HomeController extends GetxController {
  int counter = 0;

  void icrement() {
    counter++;
    update();
  }

  void decrement() {
    counter--;
    update();
  }
}
