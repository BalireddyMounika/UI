import 'package:flutter/material.dart';
import 'package:new_ui/constituency/appbar.dart';
import 'package:new_ui/utils/routes.dart';

class page_3 extends StatefulWidget {
  const page_3({Key? key}) : super(key: key);

  @override
  State<page_3> createState() => _page_3State();
}

class _page_3State extends State<page_3> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, myroutes.page_3routes);
                      },
                      child: const Icon(
                        Icons.home,
                      )),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, myroutes.Analyticsroutes);
                      },
                      child: const Icon(
                        Icons.analytics,
                      )),
                  label: "Analytics",
                ),
                BottomNavigationBarItem(
                  icon: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, myroutes.page_2routes);
                      },
                      child: const Icon(
                        Icons.logout,
                      )),
                  label: "Logout",
                ),
              ],
              currentIndex: _selectedIndex,
              selectedItemColor: Colors.green,
              unselectedItemColor: Colors.red,
              onTap: _onItemTapped,
            ),
            // bottomNavigationBar: BottomNavigationBar(
            //   selectedItemColor: Colors.red,
            //   items: <BottomNavigationBarItem>[
            //     BottomNavigationBarItem(
            //         label: "Home",
            //         icon: GestureDetector(
            //             onTap: () {
            //               Navigator.pushNamed(context, myroutes.page_3routes);
            //             },
            //             child: Icon(Icons.home, color: AppColors.blackColor))),
            //     BottomNavigationBarItem(
            //         label: "Analytics",
            //         icon: GestureDetector(
            //           onTap: () {
            //             Navigator.pushNamed(context, myroutes.Analyticsroutes);
            //           },child: Icon(Icons.analytics),)),
            //     BottomNavigationBarItem(
            //         label: "LOGOUT",
            //         icon: Icon(
            //           Icons.logout,
            //           color: AppColors.redColor,
            //         )),
            //   ],
            //   currentIndex: _selectedIndex,
            //   onTap: (setvalue) {
            //     setState(() {
            //       _selectedIndex = setvalue;
            //     });
            //   },
            // ),
            // bottomNavigationBar: BottomNavigationBar(
            //   items: [
            //     BottomNavigationBarItem(
            //         label: "Home",
            //         icon: GestureDetector(
            //           onTap: () {
            //             Navigator.pushNamed(context, myroutes.page_3routes);
            //           },
            //           child: const Icon(Icons.home),
            //         )),
            //     BottomNavigationBarItem(
            //         label: "Analytics",
            //         icon: GestureDetector(
            //           onTap: () {
            //             Navigator.pushNamed(context, myroutes.Analyticsroutes);
            //           },
            //           child: const Icon(Icons.analytics),
            //         )),
            //     BottomNavigationBarItem(
            //         label: "Logout",
            //         icon: GestureDetector(
            //           onTap: () {
            //             Navigator.pushNamed(context, myroutes.page_2routes);
            //           },
            //           child: const Icon(Icons.logout),
            //         )),
            //   ],
            //   currentIndex: _selectedIndex,
            //   selectedItemColor: Colors.red,
            //   unselectedItemColor: Colors.grey,
            //   onTap: _onItemTapped,
            // ),
            backgroundColor: Colors.yellow.shade700,
            floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                Navigator.pushNamed(context, myroutes.screenroutes);
              },
              backgroundColor: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.chat, size: 22),
                  Text(
                    'Chat',
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            body: Column(
              children: [
                const headerscreen(),
                Expanded(
                    child: ListView(
                  children: [
                    Container(
                      height: 90,
                      width: 420,
                      color: const Color(0xffe5e5e5),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            box(),
                            textButton('Task', const Color((0xffff1383)),
                                Icons.task, 'Task'),
                            box(),
                            textButton('Join', const Color((0xff17a881)),
                                Icons.door_sliding, 'Join'),
                            box(),
                            textButton('Support', const Color((0xff8924be)),
                                Icons.help_rounded, 'Support'),
                            box(),
                            textButton(
                              'Analytics',
                              const Color((0xff00ced1)),
                              Icons.analytics,
                              myroutes.Analyticsroutes,
                            ),
                            box(),
                            textButton('Influence', const Color((0xff0180ff)),
                                Icons.people, 'Influence'),
                            box(),
                            textButton(
                                'Sigmentation',
                                const Color((0xfffd0000)),
                                Icons.space_dashboard_outlined,
                                'Sigmentation'),
                            box(),
                            textButton('Dashboard', const Color((0xffff9704)),
                                Icons.dashboard, 'Dashboard'),
                            box(),
                            textButton('SMS', const Color((0xff001d9a)),
                                Icons.sms, 'SMS'),
                            box(),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                              height: 150,
                              width: 400,
                              color: Colors.white,
                              child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: const [
                                      Image(
                                        image:
                                            AssetImage('assets/images/4.jpg'),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Image(
                                        image:
                                            AssetImage('assets/images/2.jpg'),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Image(
                                        image:
                                            AssetImage('assets/images/3.jpg'),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Image(
                                        image:
                                            AssetImage('assets/images/6.jpg'),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Image(
                                        image:
                                            AssetImage('assets/images/9.jpg'),
                                      ),
                                    ],
                                  ))),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(10, 0, 260, 0),
                            alignment: AlignmentDirectional.center,
                            height: 50,
                            width: 420,
                            color: const Color(0xffe5e5e5),
                            child: const Text(
                              'Upcoming Events',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                              height: 200,
                              width: 420,
                              color: Colors.white,
                              child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: const [
                                      Image(
                                        image:
                                            AssetImage('assets/images/5.jpg'),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Image(
                                        image:
                                            AssetImage('assets/images/1.jpg'),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Image(
                                        image:
                                            AssetImage('assets/images/8.jpg'),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Image(
                                        image:
                                            AssetImage('assets/images/7.jpg'),
                                      ),
                                    ],
                                  ))),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 150,
                            width: 420,
                            color: const Color(0xffe5e5e5),
                          ),
                        ),
                      ],
                    )
                  ],
                )),
              ],
            )),
      ),
    );
  }

  Widget box() {
    return const SizedBox(width: 8);
  }

  textButton(
    String name,
    Color,
    IconData,
    var
    route,
  ) {
    return InkWell(
      onTap: () {
        print(route);
        Navigator.pushNamed(context, route);
      },
      child: Container(
        alignment: AlignmentDirectional.center,
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Color,
        ),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Icon(
            IconData,
            size: 25,
            color: Colors.white,
          ),
          Text(
            name,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(color: Colors.white, fontSize: 15),
          ),
        ]),
      ),
    );
  }
}
