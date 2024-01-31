// import 'package:flutter/material.dart';
// import 'package:new_ui/new_data.dart';
//
// // void main()=>runApp(const MyApp());
// void main() => runApp(const mypage());
//
// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   State<MyApp> createState() => _MyappState();
// }
//
// class _MyappState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: Scaffold(
//           backgroundColor: Colors.lightBlueAccent,
//           body: Center(
//             child: Stack(children: <Widget>[
//               Container(
//                 margin:
//                     const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
//                 height: 350,
//                 width: 280,
//                 decoration: const BoxDecoration(
//                   color: Colors.white,
//                   boxShadow: [
//                     BoxShadow(
//                         blurRadius: 4,
//                         color: Colors.black38,
//                         offset: Offset(4.5, 4.5)),
//                   ],
//                   borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(10),
//                       topRight: Radius.circular(210),
//                       bottomLeft: Radius.circular(60),
//                       bottomRight: Radius.circular(10)),
//                 ),
//                 child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       const SizedBox(
//                         height: 70,
//                       ),
//                       Container(
//                         padding: const EdgeInsets.all(15.0),
//                         child: const Align(
//                           alignment: Alignment.topLeft,
//                           child: Text(
//                             'Medicine',
//                             style: TextStyle(
//                                 fontSize: 30,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.lightBlueAccent),
//                           ),
//                         ),
//                       ),
//                       const SizedBox(
//                         height: 20,
//                       ),
//                       Container(
//                         padding: const EdgeInsets.all(15.0),
//                         child: const Align(
//                           alignment: Alignment.topLeft,
//                           child: Text(
//                             'We asked several medical students why they choose to study medicine',
//                             style: TextStyle(
//                               fontSize: 20,
//                             ),
//                             textAlign: TextAlign.left,
//                           ),
//                         ),
//                       ),
//                       const SizedBox(
//                         height: 30,
//                       ),
//                       Align(
//                         alignment: Alignment.bottomRight,
//                         child: Container(
//                           height: 66,
//                           width: 63,
//                           decoration: BoxDecoration(
//                               color: Colors.cyan.shade400,
//                               borderRadius: const BorderRadius.only(
//                                   topLeft: Radius.circular(20.0),
//                                   bottomRight: Radius.circular(10.0))),
//                           child: const Align(
//                               alignment: Alignment.center,
//                               child: Icon(
//                                 Icons.thumb_up,
//                                 size: 50,
//                                 color: Colors.white,
//                               )),
//                         ),
//                       )
//                     ]),
//               ),
//               Positioned(
//                 left: 35,
//                 top: -3,
//                 child: Image.asset(
//                   'assets/tablets_image.png',
//                   height: 110,
//                   width: 250,
//                   alignment: Alignment.center,
//                 ),
//               ),
//             ]),
//           ),
//         ));
//   }
// }
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {

    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bottom Navigation Bar Example'),
        ),
        body: Center(
          child: Text('Selected Index: $_selectedIndex'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.red, // set the selected item color
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
