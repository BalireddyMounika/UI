import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            bottomNavigationBar: BottomNavigationBar(
                fixedColor: Colors.blue,
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home, color: Colors.blue),
                      label: "Home"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.bar_chart), label: "Survey"),
                ]),
            floatingActionButton: FloatingActionButton(
              child: const Text("Join"),
              onPressed: () {},
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.miniCenterDocked,
            backgroundColor: Colors.yellow.shade700,
            body: ListView(scrollDirection: Axis.vertical, children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 50,
                            ),
                            Text(
                              'Prasada Rao Pyala',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17),
                            ),
                          ]),
                      const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 20,
                      ),
                      const Text(
                        'TELUGU DESAM PARTY',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const CircleAvatar(
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.red,
                      ),
                    ],
                  ),
                ],
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    mg(),
                    custom_button(Icons.task, "Task", 0xffff1383, 15.0),
                    mg(),
                    custom_button(Icons.door_sliding, "Join", 0xff17a881, 15.0),
                    mg(),
                    custom_button(
                        Icons.help_rounded, "Support", 0xff8924be, 10.0),
                    mg(),
                    custom_button(
                        Icons.analytics, "Analytics", 0xff00ced1, 10.0),
                    mg(),
                    custom_button(Icons.people, "Influence", 0xff0180ff, 10.0),
                    mg(),
                    custom_button(Icons.space_dashboard_outlined,
                        "Sigmentation", 0xfffd0000, 10.0),
                    mg(),
                    custom_button(
                        Icons.dashboard, "Dashboard", 0xffff9704, 10.0),
                    mg(),
                    custom_button(Icons.sms, "SMS", 0xff001d9a, 15.0),
                    mg(),
                  ],
                ),
              ),
            ])));
  }
}

Widget mg() {
  return const SizedBox(
    width: 10,
  );
}

Padding custom_button(icon, text, color, _fontsize) {
  return Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: SizedBox(
          height: 70,
          width: 70,
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor: MaterialStateColor.resolveWith(
                  (states) => Color(color),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ))),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    icon,
                    size: 25,
                    color: Colors.white,
                  ),
                  Text(
                    text,
                    style: TextStyle(color: Colors.white, fontSize: _fontsize),
                  ),
                ]),

          )));
}
