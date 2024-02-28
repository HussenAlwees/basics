Stream<MyModel> getStreamOfMyModel() {
  return Stream<MyModel>.periodic(Duration(milliseconds: 500), (count) => MyModel(someValue: "Hello $count")).take(12);
}

class MyModel {
  String someValue = "Hello";
  MyModel({required this.someValue});
  void dosomething() {
    someValue = "Goodbye";
    print(someValue);
  }
}
