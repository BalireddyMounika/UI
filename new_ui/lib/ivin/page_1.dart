import 'package:flutter/material.dart';
import 'package:new_ui/ivin/page_3.dart';
import 'package:new_ui/utils/routes.dart';
import 'package:new_ui/ivin/page_2.dart';

import '../bot/chat.dart';
import 'analytics.dart';

void main() => runApp(const myapp());

class myapp extends StatefulWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => const page_2(),
        myroutes.page_2routes: (context) => const page_2(),
        myroutes.page_3routes: (context) => const page_3(),
        myroutes.Analyticsroutes: (context) => const Analytics(),
        myroutes.screenroutes: (context) => const screen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
