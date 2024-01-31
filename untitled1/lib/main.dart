import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

import 'app.dart';

void main() {
  initGetStorage();
  runApp(const MyApp());
}

Future initGetStorage() async {
  await GetStorage.init();
}
