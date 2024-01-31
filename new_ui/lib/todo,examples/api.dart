import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(const API());

class API extends StatefulWidget {
  const API({Key? key}) : super(key: key);

  @override
  State<API> createState() => _APIState();
}

String? stringResponse;

class _APIState extends State<API> {
  final Map<String, String> _headers = {
    "Content-Type": "application/json",
    "Authorization":
        "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg5NTA5NTE1LCJqdGkiOiJlOWYyYzI3YWEyZjU0NGZhODA4NWMyNGEwYWNlNTU1YiIsInVzZXJfaWQiOjV9.6aT8w-WS04wxYhXFJVJtoLhbXqvUW_GsnAOiG4kyjiQ"
  };
  var data = jsonEncode(
      {"Username": "Rathnam", "Password": "Test@1234", "DeviceToken": ""});
  Future apicall() async {
    print(("object"));
    http.Response response;
    var client = http.Client();
    response = await client.post(
        Uri.parse('https://staging-api.vivifyhealthcare.com/HCP/Login/'),
        headers: _headers,
        body: data);
    print(response.statusCode);
    print("object");
    if (response.statusCode == 200) {
      setState(() {
        stringResponse = response.body;
        var p = jsonDecode(response.body);
        print(p.runtimeType);

        print(p['Result']['id']);
      });
    }
  }

  @override
  void initState() {
    apicall();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title:  Text("API INTEGRATION")),
        body: Center(
          child: Container(
              alignment: Alignment.center,
              height: 500,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow:  [BoxShadow(offset: Offset(2.0, 2.0))]),
              child: ElevatedButton(
                  onPressed: () {
                    print("data");
                    apicall();
                  },
                  child: ListView(children: [
                    stringResponse == null
                        ?  Center(child: Text("Loading..."))
                        : Text(stringResponse.toString(),
                            textAlign: TextAlign.center,
                            style:  TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.italic)),
                  ]))),
        ),
      ),
    );
  }
}
