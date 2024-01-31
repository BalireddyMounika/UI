import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/utils/routes.dart';
import 'package:untitled/view/newscreen.dart';
import 'package:untitled/view/view.dart';
import 'package:untitled/view_model/auth_view_model.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => AuthViewModel())
    ],
        child:MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const donkey(),
        MyRoutes.donkeyRoutes: (context) => const donkey(),
        MyRoutes.appleRoutes: (context) => const apple(),
      },
    ),
    );

  }
}


