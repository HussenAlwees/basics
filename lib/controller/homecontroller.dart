import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HomeController extends GetxController {
  RxInt counter = 0.obs;

  void icrement() {
    counter.value++;
  }

  void decrement() {
    counter.value--;
  }
}
