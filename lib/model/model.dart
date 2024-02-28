Future<MyModel> someAsyncFunctionToGetMyModel() async {
  await Future.delayed(Duration(seconds: 4));
  print("after 4 sec");
  return MyModel(someValue: 'new data');
}

class MyModel {
  String someValue = "Hello";
  MyModel({required this.someValue});
  Future<void> dosomething() async {
    await Future.delayed(Duration(seconds: 2));
    someValue = "Goodbye";
    print(someValue);
  }
}
