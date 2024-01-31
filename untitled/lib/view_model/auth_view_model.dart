import 'package:untitled/repository/auth_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:untitled/utils/utils.dart';

class AuthViewModel with ChangeNotifier {
  final myRepo = AuthRepository();
  Future<void> loginApi(dynamic data,BuildContext context) async {
    myRepo.loginApi(data).then((value){
      utils.snackBar("Login Succesfully", context);
      print(value.toString());
    }).onError((error, stackTrace){
      utils.snackBar(error.toString(), context);
      print(error.toString());
    });
  }
}
