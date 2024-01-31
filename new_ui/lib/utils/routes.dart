import 'package:flutter/material.dart';
import 'package:new_ui/utils/colors.dart';

class myroutes {
  static String page_2routes = "/page_2";
  static String page_3routes = "/page_3";
  static String Analyticsroutes = "/Analytics";
  static String screenroutes = "/screen";
}

class utils {
  static void fieldFocusChange(
      BuildContext context, FocusNode current, FocusNode nextFocus) {
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  static void flushBarErrorMessage(String message, BuildContext context) {}

  static snackBar(String message, BuildContext context) {
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(backgroundColor: Colors.red, content: Text(message)));
  }
}

