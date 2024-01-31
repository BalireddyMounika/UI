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
                fixedColor: const Color(0xff32A887),
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home, color: Color(0xff32A887)),
                      label: "Orders"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.medical_services_rounded),
                      label: "My Pharmacy"),
                ]),
            appBar: AppBar(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'My Pharmacy',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.logout,
                            color: Color(0xff32A887), size: 25),
                      )
                    ])),
            body: const Center(
                child: Text(
              "Welcome",
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple),
            )),
            drawer: Drawer(
                child: ListView(children: [
              DrawerHeader(
                  decoration: const BoxDecoration(color: Color(0xff32A887)),
                  child: DrawerHeader(
                      decoration: const BoxDecoration(color: Color(0xff32A887)),
                      child: Row(children: [
                        const CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/home_image.png')),
                        //     child: CircleAvatar(child: Image.network(
                        //   'https://static.javatpoint.com/tutorial/flutter/images/flutter-creating-android-platform-specific-code3.png'))
                        SizedBox(
                            height: 70,
                            width: 160,
                            child: Column(children: const [
                              SizedBox(height: 20),
                              Text("Abhishek Srivastava"),
                              Text("+917428723247")
                            ]))
                      ]))),
              ListTile(
                leading: const Icon(Icons.person, color: Color(0xff32A887)),
                title: const Text('My Profile', style: TextStyle(fontSize: 18)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading:
                    const Icon(Icons.account_balance, color: Color(0xff32A887)),
                title:
                    const Text('Bank Details', style: TextStyle(fontSize: 18)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.lock, color: Color(0xff32A887)),
                title: const Text('Change Password',
                    style: TextStyle(fontSize: 18)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout, color: Color(0xff32A887)),
                title: const Text('Home', style: TextStyle(fontSize: 18)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ]))));
  }
}
