import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsServices extends GetxService {
  late SharedPreferences shardprefs;

  RxInt counter = 0.obs;

  Future<SettingsServices> init() async {
    //start sevices
    shardprefs = await SharedPreferences.getInstance();
    counter.value = shardprefs.getInt("count") ?? 0;
    return this;
  }

  increase() {
    counter.value++;
    shardprefs.setInt("count", counter.value);
  }
}
