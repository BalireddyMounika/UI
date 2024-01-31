// import 'package:flutter/material.dart';
//
// void main() => runApp(splash());
//
// class splash extends StatefulWidget {
//   const splash({Key? key}) : super(key: key);
//
//   @override
//   State<splash> createState() => _splashState();
// }
//
// class _splashState extends State<splash> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: SafeArea(
//           child: Scaffold(
//             body: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Align(
//                   alignment: Alignment.topLeft,
//                   child: Image.asset(
//                     'assets/Group 130 (2).png',
//                     width: 124,
//                     height: 141,
//                   ),
//                 ),
//                 Align(
//                   alignment: Alignment.center,
//                   child: Image.asset(
//                     'assets/images/log.png',
//                     width: 57,
//                     height: 57,
//                     alignment: Alignment.center,
//                   ),
//                 ),
//                 Align(
//                   alignment: Alignment.bottomRight,
//                   child: Image.asset(
//                     'assets/Group 130 (2).png',
//                     width: 124,
//                     height: 141,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ));
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _firstImageAnimation;
  late Animation<double> _secondImageAnimation;
  late Animation<Offset> _thirdImageAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: Duration(seconds: 3),
      vsync: this,
    );

    _firstImageAnimation = Tween<Offset>(
      begin: Offset(1.0, 1.0),
      end: Offset(0.0, 0.0),
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Interval(0.0, 0.5, curve: Curves.easeOut),
      ),
    );

    _secondImageAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Interval(0.0, 0.75, curve: Curves.easeIn),
      ),
    );

    _thirdImageAnimation = Tween<Offset>(
      begin: Offset(2.0, 0.0),
      end: Offset(0.0, 0.0),
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Interval(0.5, 1.0, curve: Curves.easeOut),
      ),
    );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 44,
            left: 22,
            child: SlideTransition(
              position: _firstImageAnimation,
              child: Image.asset('assets/Group 130 (2).png',
                  width: 124, height: 141),
            ),
          ),
          Center(
            child: ScaleTransition(
              scale: _secondImageAnimation,
              child:
                  Image.asset('assets/images/log.png', width: 57, height: 57),
            ),
          ),
          Positioned(
            top: 630,
            left: 221,
            child: SlideTransition(
              position: _thirdImageAnimation,
              child: Image.asset('assets/Group 130 (2).png',
                  width: 124, height: 141),
            ),
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: SplashScreen(),
//     );
//   }
// }
//
// class SplashScreen extends StatefulWidget {
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _animationController;
//   late Animation<Offset> _firstImageAnimation;
//   late Animation<Offset> _secondImageAnimation;
//   late Animation<Offset> _thirdImageAnimation;
//
//   @override
//   void initState() {
//     super.initState();
//     _animationController = AnimationController(
//       duration: Duration(seconds: 3),
//       vsync: this,
//     );
//
//     _firstImageAnimation = Tween<Offset>(
//       begin: Offset(10.0, -1.0),
//       end: Offset(0.0, 0.0),
//     ).animate(
//       CurvedAnimation(
//         parent: _animationController,
//         curve: Interval(0.0, 0.5, curve: Curves.easeOut),
//       ),
//     );
//     _secondImageAnimation = Tween<Offset>(
//       begin: Offset(15.0, 0.0),
//       end: Offset(0.0, 0.0),
//     ).animate(
//       CurvedAnimation(
//         parent: _animationController,
//         curve: Interval(0.0, 0.5, curve: Curves.bounceIn),
//       ),
//     );
//     _thirdImageAnimation = Tween<Offset>(
//       begin: Offset(1.0, -1.0),
//       end: Offset(0.0, 0.0),
//     ).animate(
//       CurvedAnimation(
//         parent: _animationController,
//         curve: Interval(0.0, 0.5, curve: Curves.easeOut),
//       ),
//     );
//
//     _animationController.forward();
//   }
//
//   // @override
//   // void dispose() {
//   //   _animationController.dispose();
//   //   super.dispose();
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Positioned(
//             top: 44,
//             left: 22,
//             child: SlideTransition(
//               position: _firstImageAnimation,
//               child: Image.asset('assets/Group 130 (2).png',
//                   width: 124, height: 141),
//             ),
//           ),
//           Positioned(
//             top: 209,
//             left: -11,
//             child: SlideTransition(
//               position: _secondImageAnimation,
//               child:
//                   Image.asset('assets/images/log.png', width: 381, height: 381),
//             ),
//           ),
//           Positioned(
//             top: 630,
//             left: 221,
//             child: SlideTransition(
//               position: _thirdImageAnimation,
//               child: Image.asset('assets/Group 130 (2).png',
//                   width: 124, height: 141),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: Scaffold(
//           body:
//           Stack(
//             children: [
//               Positioned(
//                 top: 44,
//                 left: 22,
//                 child: Image.asset('assets/Group 130 (2).png',
//                     width: 124, height: 141),
//               ),
//                    Positioned(
//                 top: 371,
//                 left: 151,
//                 child:
//                     Image.asset('assets/images/log.png', width: 57, height: 57),
//               ),
//               Positioned(
//                 top: 630,
//                 left: 221,
//                 child: Image.asset('assets/Group 130 (2).png',
//                     width: 124, height: 141),
//               ),
//             ],
//           ),
//         ));
//   }
// }
