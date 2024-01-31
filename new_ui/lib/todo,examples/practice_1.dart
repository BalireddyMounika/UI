import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            bottomNavigationBar: Container(
              height: 67,
              width: 414,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Color(0xff32A887),
              ),
              child: const Text(
                'Create New Schedule',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            appBar: AppBar(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              title: const Text(
                "Schedule",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
              leading: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
                size: 25.0,
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 25,
                    ),
                    const Text("Date",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        )),
                    SizedBox(
                      height: 80,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 7,
                          itemBuilder: (BuildContext context, int index) {
                            return SizedBox(
                                width: 70,
                                child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                          height: 64,
                                          width: 60,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color:
                                                    const Color(0xffa3949499),
                                                width: 1),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: const [
                                                Text(
                                                  "9",
                                                  style: TextStyle(
                                                      fontSize: 22,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Color(0xff32A887)),
                                                ),
                                                Text("Tue",
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      color: Color(0xffA39494),
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    )),
                                              ]))
                                    ]));
                          }),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      height: 21,
                      width: 86,
                      child: Text("Schedules",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          )),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Container(
                          height: 40,
                          width: 110,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: const Color(0xffa3949499),
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          child: const Text("12:00 PM",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white))),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                          height: 40,
                          width: 100,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black38, width: 1),
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          child: const Text("12:00 PM",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff32A887)))),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                          height: 40,
                          width: 100,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: const Color(0xff32A887),
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          child: const Text("12:15 PM",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white))),
                    ]),
                  ]),
            )));
  }
}
