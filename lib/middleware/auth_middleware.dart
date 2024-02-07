import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/route_middleware.dart';
import 'package:new_test_project/main.dart';

class AuthMiddleWare extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    if (sharedPref!.getString("role") == "user") {
      return RouteSettings(name: "/home");
    }
    if (sharedPref!.getString("role") == "admin") {
      return RouteSettings(name: "/admin");
    }
    return null;
  }
}
