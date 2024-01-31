import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:new_ui/todo.dart';

void main() => runApp(mypage());

class mypage extends StatefulWidget {
  const mypage({super.key});

  @override
  _mypageState createState() => _mypageState();
}

class _mypageState extends State<mypage> {
  int _pageNumber = 1;
  int page = 1;
   int _pageSize = 10;
  bool _isLoading = false;
  List<dynamic> _todos = [];
  final todo = '';
  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    setState(() => _isLoading = true);
    try {
      final response = await Dio().get(
        'https://jsonplaceholder.typicode.com/todos',
        queryParameters: {'_page': _pageNumber, '_limit': _pageSize},
      );
      setState(() {
        _todos = response.data;
      });
    } catch (e) {
      print(e);
    } finally {
      setState(() => _isLoading = false);
    }
  }

  Future<void> _loadNextPage() async {
    if (_pageNumber < 30) {
      setState(() => _pageNumber++);
      await _loadData();
    }
  }

  Future<void> _loadPrevPage() async {
    if (_pageNumber > 1) {
      setState(() => _pageNumber--);
      await _loadData();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          title: const Text('Dio'),
          centerTitle: true,
        ),
        body: _isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: _todos.length,
                itemBuilder: (context, index) {
                  final item = _todos[index];
                  final todo = _todos[index];
                  return SizedBox(
                      height: 120,
                      child: Padding(
                          padding: const EdgeInsets.only(
                              left: 15.0, top: 20.0, right: 15.0),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailPage(
                                    userId: item['userId'],
                                    id: item['id'],
                                    title: item['title'],
                                    completed: item['completed'],
                                  ),
                                ),
                              );
                            },
                            style: ButtonStyle(
                                overlayColor:
                                    MaterialStateProperty.resolveWith<Color?>(
                                  (Set<MaterialState> states) {
                                    return null;
                                  },
                                ),
                                backgroundColor: MaterialStateColor.resolveWith(
                                    (states) => Colors.white),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        side: const BorderSide(
                                            color: Colors.lightBlueAccent)))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('UserId:${todo['userId']}',
                                    style: const TextStyle(
                                        // fontWeight: FontWeight.bold,
                                        color: Colors.black)),
                                Text(
                                  'Id:${todo['id']}',
                                  style: const TextStyle(
                                      // fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                Text(
                                  'Title:${todo['title']}',
                                  style: const TextStyle(
                                      // fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                Text(
                                  'Completed: ${todo['completed']}',
                                  style: const TextStyle(
                                      // fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          )));
                },
              ),
        bottomNavigationBar: Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: _loadPrevPage,
              ),
              _todos.isEmpty
                  ? CircularProgressIndicator()
                  : Text(
                      'page : $_pageNumber (${_todos[0]['id']},${_todos[_todos.length - 1]['id']})',
                      style: const TextStyle(fontSize: 17),
                    ),
              IconButton(
                icon: const Icon(Icons.arrow_forward),
                onPressed: _loadNextPage,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

