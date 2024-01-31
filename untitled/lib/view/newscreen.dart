import 'package:flutter/material.dart';

import '../utils/routes.dart';

class apple extends StatefulWidget {
  const apple({Key? key}) : super(key: key);

  @override
  State<apple> createState() => _appleState();
}

class _appleState extends State<apple> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("welcome"),
      ),
      body: const Center(
        child: Text("objectxjhcidzijcolk"),
      ),
    );
  }
}
