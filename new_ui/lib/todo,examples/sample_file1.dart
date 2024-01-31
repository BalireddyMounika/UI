import 'package:flutter/material.dart';

void main() => runApp(const MyStatefulWidget());

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.green.shade100,
            appBar: AppBar(
              leading: const Icon(Icons.arrow_back_ios_new, size: 25),
              title: const Text("Create Schedule",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
            ),
            body: Column(children: [
              Container(
                height: 657,
                width: 414,
                margin: const EdgeInsets.only(top: 65),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(blurRadius: 0.0),
                  ],
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    const Text("Set Your Weekly Schedule",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 17)),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "some instruction will be here for doctor about schedule",
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 17),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: const Color(0xffA39494)),
                                borderRadius: BorderRadius.circular(5))),
                        const SizedBox(
                          height: 20,
                          child: Text(
                            "Sun",
                            style: TextStyle(color: Color(0xffA39494)),
                          ),
                        ),
                        Container(
                          height: 46,
                          width: 123,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xffA39494)),
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        const SizedBox(
                          child: Text(
                            "-",
                            style: TextStyle(
                                fontSize: 30, color: Color(0xffA39494)),
                          ),
                        ),
                        Container(
                          height: 46,
                          width: 123,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xffA39494)),
                              borderRadius: BorderRadius.circular(8)),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: const Color(0xffA39494)),
                                borderRadius: BorderRadius.circular(5))),
                        const SizedBox(
                          height: 20,
                          child: Text(
                            "Mon",
                            style: TextStyle(color: Color(0xffA39494)),
                          ),
                        ),
                        Container(
                          height: 46,
                          width: 123,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xffA39494)),
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        const SizedBox(
                          child: Text(
                            "-",
                            style: TextStyle(
                                fontSize: 30, color: Color(0xffA39494)),
                          ),
                        ),
                        Container(
                          height: 46,
                          width: 123,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xffA39494)),
                              borderRadius: BorderRadius.circular(8)),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                                color: const Color(0xff32A887),
                                border:
                                    Border.all(color: const Color(0xffA39494)),
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: const [BoxShadow(blurRadius: 2)]),
                            child: const Icon(Icons.done,
                                color: Colors.white, size: 20)),
                        const SizedBox(
                          height: 20,
                          child: Text("Tue",
                              style: TextStyle(color: Color(0xff32A887))),
                        ),
                        Container(
                          height: 46,
                          width: 123,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xff32A887)),
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        const SizedBox(
                          child: Text(
                            "-",
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          ),
                        ),
                        Container(
                          height: 46,
                          width: 123,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xff32A887)),
                              borderRadius: BorderRadius.circular(8)),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: const Color(0xffA39494)),
                                borderRadius: BorderRadius.circular(5))),
                        const SizedBox(
                          height: 20,
                          child: Text(
                            "Wed",
                            style: TextStyle(color: Color(0xffA39494)),
                          ),
                        ),
                        Container(
                          height: 46,
                          width: 123,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xffA39494)),
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        const SizedBox(
                          child: Text(
                            "-",
                            style: TextStyle(
                                fontSize: 30, color: Color(0xffA39494)),
                          ),
                        ),
                        Container(
                          height: 46,
                          width: 123,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xffA39494)),
                              borderRadius: BorderRadius.circular(8)),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                                color: const Color(0xff32A887),
                                border:
                                    Border.all(color: const Color(0xffA39494)),
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: const [BoxShadow(blurRadius: 2)]),
                            child: const Icon(Icons.done,
                                color: Colors.white, size: 20)),
                        const SizedBox(
                          height: 20,
                          child: Text("Thu",
                              style: TextStyle(color: Color(0xff32A887))),
                        ),
                        Container(
                          height: 46,
                          width: 123,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xff32A887)),
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        const SizedBox(
                          child: Text(
                            "-",
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          ),
                        ),
                        Container(
                          height: 46,
                          width: 123,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xff32A887)),
                              borderRadius: BorderRadius.circular(8)),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                                color: const Color(0xff32A887),
                                border:
                                    Border.all(color: const Color(0xffA39494)),
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: const [BoxShadow(blurRadius: 2)]),
                            child: const Icon(Icons.done,
                                color: Colors.white, size: 20)),
                        const SizedBox(
                          height: 20,
                          child: Text("Fri",
                              style: TextStyle(color: Color(0xff32A887))),
                        ),
                        Container(
                          height: 46,
                          width: 123,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xff32A887)),
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        const SizedBox(
                          child: Text(
                            "-",
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          ),
                        ),
                        Container(
                          height: 46,
                          width: 123,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xff32A887)),
                              borderRadius: BorderRadius.circular(8)),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                                color: const Color(0xff32A887),
                                border:
                                    Border.all(color: const Color(0xffA39494)),
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: const [BoxShadow(blurRadius: 2)]),
                            child: const Icon(Icons.done,
                                color: Colors.white, size: 20)),
                        const SizedBox(
                          height: 20,
                          child: Text("Sat",
                              style: TextStyle(color: Color(0xff32A887))),
                        ),
                        Container(
                          height: 46,
                          width: 123,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xff32A887)),
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        const SizedBox(
                          child: Text(
                            "-",
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          ),
                        ),
                        Container(
                          height: 46,
                          width: 123,
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xff32A887)),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 30),
                    Container(
                      margin: const EdgeInsets.only(left: 230),
                      height: 30,
                      width: 50,
                      child: const Text(
                        "Save",
                        textAlign: TextAlign.right,
                        style:
                            TextStyle(fontSize: 20, color: Color(0xff32A887)),
                      ),
                    )
                  ],
                ),
              ),
            ])));
  }
}
