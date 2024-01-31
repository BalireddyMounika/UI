import 'package:flutter/material.dart';

import 'data/images.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              toolbarHeight: 20,
              foregroundColor: Colors.black,
              backgroundColor: Colors.white,
              bottom: const TabBar(
                labelColor: Colors.black, //<-- selected text color
                unselectedLabelColor: Colors.purple,
                indicatorColor: Colors.black,
                tabs: [
                  Tab(
                    child: Text(
                      "Edit",
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                  Tab(
                      child: Text(
                    "Campaign",
                    style: TextStyle(fontSize: 22),
                  ))
                ],
              ),
            ),
            body: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, top: 20.0, right: 20.0, bottom: 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                            onTap: () {
                              // Get.toNamed(Routes.viewcard);
                            },
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(30.0)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Image(
                                      height: 20,
                                      image: AssetImage(Images.card)),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "View Card",
                                    style: TextStyle(fontSize: 18),
                                  )
                                ],
                              ),
                            )),
                      ],
                    )),
              ],
            ),
          ),
        ));
  }
}
