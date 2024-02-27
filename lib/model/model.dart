import 'package:flutter/material.dart';

class MyModel with ChangeNotifier {
  String name = "Hussen";

  void changeName(String newName) {
    name = newName;

    notifyListeners();
  }
}

class AnotherModel {
  MyModel myModel;
  AnotherModel(this.myModel);
  void changeNameAnotherModel() {
    myModel.changeName("Husssen Alwees");
  }
}
