import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:new_ui/utils/routes.dart';
import 'package:http/http.dart' as http;

class page_2 extends StatefulWidget {
  const page_2({Key? key}) : super(key: key);

  @override
  State<page_2> createState() => _page_2State();
}

class _page_2State extends State<page_2> {
  ValueNotifier<bool> _obscurepassword = ValueNotifier<bool>(true);

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();
  FocusNode loginFocusNode = FocusNode();

  void login(String email, password) async {
    try {
      final data = jsonEncode({
        "Email": _emailController.text,
        "Password": _passwordController.text
      });
      String urll = 'http://172.105.37.117:8000/UserIvin-API/Login/';
      Map<String, String> headers = {
        'Authorization':
            'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg5MTM3MzQzLCJpYXQiOjE2ODEzNjEzNDMsImp0aSI6ImMwOGVlOGIzNDMyYTQzZWI4YWMzNTFlY2M0YWNhNTEwIiwidXNlcl9pZCI6MX0.aLF_6jYbTCXyu9o1JYXUc8XNMo83lRNeWpoLTa9k8zs',
        'Content-Type': 'application/json'
      };
      var sample =
          await http.post(Uri.parse(urll), headers: headers, body: data);
      print(sample.statusCode);
      print(sample.body);
      if (sample.statusCode == 200) {
        Navigator.pushNamed(context, myroutes.page_3routes);
        print('login successfully');
      } else {
        print("Wrong Password");
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/log.png',
              fit: BoxFit.cover,
            ),
            const Text(
              'Unlocking Insights with Data-driven Strategies',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 38),
              child: Column(
                children: [
                  TextFormField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    focusNode: emailFocusNode,
                    decoration: const InputDecoration(
                      hintText: "email",
                      labelText: "Email",
                      prefixIcon: Icon(Icons.email),
                    ),
                    onFieldSubmitted: (value) {
                      utils.fieldFocusChange(
                          context, emailFocusNode, passwordFocusNode);
                    },
                  ),
                  ValueListenableBuilder(
                      valueListenable: _obscurepassword,
                      builder: (context, value, child) {
                        return TextFormField(
                          controller: _passwordController,
                          obscureText: _obscurepassword.value,
                          focusNode: passwordFocusNode,
                          obscuringCharacter: "*",
                          decoration: InputDecoration(
                            hintText: "password",
                            labelText: "Password",
                            prefixIcon: const Icon(Icons.lock_open_rounded),
                            suffixIcon: InkWell(
                                onTap: () {
                                  _obscurepassword.value =
                                      !_obscurepassword.value;
                                },
                                child: Icon(_obscurepassword.value
                                    ? Icons.visibility_off_outlined
                                    : Icons.visibility)),
                          ),
                          onFieldSubmitted: (value) {
                            utils.fieldFocusChange(
                                context, passwordFocusNode, loginFocusNode);
                          },
                        );
                      }),
                  SizedBox(height: height * .085),
                  GestureDetector(
                    onTap: () {
                      login(_emailController.text.toString(),
                          _passwordController.text.toString());
                    },
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                          child:
                              // Text(
                              //   'Login',
                              //   style: TextStyle(
                              //       fontSize: 23, fontWeight: FontWeight.bold),
                              // ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, myroutes.page_3routes);
                                  },
                                  child: Text("Login"))),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
