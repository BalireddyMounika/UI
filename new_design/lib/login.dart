import 'package:flutter/material.dart';
import 'package:new_design/routes/app_routes.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          drawer: const Drawer(),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  icon: IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios_new,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.LOGIN);
                    },
                  ),
                  label: 'Back',
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(
                  icon: IconButton(
                    icon: Icon(
                      Icons.home,
                    ),
                    onPressed: () {},
                  ),
                  label: 'Home',
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(
                  icon: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.HOME);
                    },
                    icon: Icon(
                      Icons.arrow_forward_ios,
                    ),
                  ),
                  label: 'Forward',
                  backgroundColor: Colors.white),
            ],
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.network(
                  'https://cdn.pixabay.com/photo/2016/02/17/19/08/lotus-1205631_960_720.jpg',
                  height: 180,
                ),
                const Text(
                  "Lotus",
                  style: TextStyle(fontSize: 60.0),
                ),
                const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      "The Aquatic flower blooming most beautifully from the"
                      " deepest and thick mud. It is a perennially blooming flower"
                      " with striking symmetry and colours. But, this delicate beauty"
                      " is much more than just a flower. It is a flower of spirituality "
                      "and meaning as old as timeUnfurling the Lotus information to know "
                      "what makes this flower, Oh, so Special!",
                      style: TextStyle(fontSize: 22.0),
                    )),
              ],
            ),
          ),
        ));
  }
}
