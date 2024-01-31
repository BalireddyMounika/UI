import 'package:flutter/material.dart';

void main() => runApp(const hello());

class hello extends StatefulWidget {
  const hello({Key? key}) : super(key: key);
  @override
  State<hello> createState() => _helloState();
}

class _helloState extends State<hello> {
  TextEditingController task = TextEditingController();
  TextEditingController desc = TextEditingController();
  List _task = [];
  List _desc = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            title: const Text("ToDo Application"),
            backgroundColor: const Color(0xff64C8F2)),
        body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: TextFormField(
              controller: task,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Task',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: TextFormField(
              controller: desc,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Description',
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30.0),
            height: 60,
            width: 200,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  _desc.add(desc.text);
                  _task.add(task.text);
                });
              },
              style: ButtonStyle(
                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed)) {}
                      return null;
                    },
                  ),
                  backgroundColor: MaterialStateColor.resolveWith(
                      (states) => const Color(0xff64C8F2)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ))),
              child: const Text(
                "Create",
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: _task.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.all(20.0),
                      height: 80,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.white, width: 1),
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: const [
                            BoxShadow(offset: Offset(1.0, 1.0), blurRadius: 3.0)
                          ]),
                      child: Text(
                          "Task : ${_task[index]}\ndescription: ${_desc[index]}"),
                    );
                  }))
        ]),
      ),
    );
  }
}
