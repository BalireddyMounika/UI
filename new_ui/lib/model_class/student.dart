import 'package:flutter/material.dart';

import 'model.dart';

void main() => runApp(const Myclass());

class Myclass extends StatefulWidget {
  const Myclass({Key? key}) : super(key: key);

  @override
  State<Myclass> createState() => _MyclassState();
}

class _MyclassState extends State<Myclass> {
  List<Userlogin> detail = [
    Userlogin(name: "arjun", rollNumber: 1, userloginClass: "3"),
    Userlogin(name: "siva", rollNumber: 2, userloginClass: "3"),
    Userlogin(name: "laxmi", rollNumber: 3, userloginClass: "3"),
    Userlogin(name: "amrutha", rollNumber: 4, userloginClass: "3"),
    Userlogin(name: "vicky", rollNumber: 4, userloginClass: "3"),
    Userlogin(name: "vamsi", rollNumber: 4, userloginClass: "3"),
    Userlogin(name: "rithu", rollNumber: 4, userloginClass: "3"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Student Details"),
          ),
          body: ListView.builder(
            itemCount: detail.length,
            itemBuilder: (context, index) {
              return AlertDialog(
                title: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(detail[index].name.toString()),
                      Text(detail[index].userloginClass.toString()),
                      Text(detail[index].rollNumber.toString()),
                    ]),
              );
            },
          ),
        ));
  }
}
