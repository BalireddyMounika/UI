import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:untitled/utils/utils.dart';

import '../res/components/round_button.dart';
import 'package:untitled/view_model/auth_view_model.dart';
class donkey extends StatefulWidget {
  const donkey({Key? key}) : super(key: key);

  @override
  State<donkey> createState() => _donkeyState();
}

class _donkeyState extends State<donkey> {
  ValueNotifier<bool> _obscurepassword = ValueNotifier<bool>(true);
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();
  FocusNode loginFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    final authViewMode = Provider.of<AuthViewModel>(context);
    final height = MediaQuery.of(context).size.height * 1;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
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
                        prefixIcon: Icon(Icons.lock_open_rounded),
                        suffixIcon: InkWell(
                            onTap: () {
                              _obscurepassword.value = !_obscurepassword.value;
                            },
                            child: Icon(_obscurepassword.value
                                ? Icons.visibility_off_outlined
                                : Icons.visibility)),
                      ));
                }),
            SizedBox(height: height * .085),
            RoundButton(
              title: 'Login',
              onpress: () {
                loginFocusNode;
                if (_emailController.text.isEmpty) {
                  utils.snackBar("please enter email", context);
                } else if (_passwordController.text.isEmpty) {
                  utils.snackBar("please enter password", context);
                } else if (_passwordController.text.length < 6) {
                  utils.snackBar("please enter 6 digit password", context);
                } else {
                  Map data = {
                    "Email": _emailController.text.toString(),
                    "Password": _passwordController.text.toString()
                  };


                  authViewMode.loginApi(data,context);
                  print('api hit');
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
