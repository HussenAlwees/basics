import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/route_middleware.dart';

// ignore: camel_case_types
class superMiddleWare extends GetMiddleware {
  @override
  int? get priority => 3;

  bool mtvar = true;
  @override
  RouteSettings? redirect(String? route) {
    if (mtvar == true) {
      return RouteSettings(name: "super");
    } else {
      return null;
    }
  }
}
