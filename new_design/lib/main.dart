import 'package:flutter/material.dart';
import 'package:new_design/routes/app_routes.dart';

import 'home.dart';
import 'login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, routes: {
      "/": (context) => login(),
      Routes.LOGIN: (context) => login(),
      Routes.HOME: (Context) => home()
    });
  }
}
