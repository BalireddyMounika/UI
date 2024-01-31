import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  const DetailPage({
    Key? key,
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('$id'),
        ),
        body: Center(
          child: Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [const Text('UserId: '), Text('$userId')],
                  ),
                  Row(
                    children: [const Text('Id:'), Text('$id')],
                  ),
                  Row(
                    children: [const Text('Title: '), Flexible(fit: FlexFit.tight,child:Text('$title',softWrap: true,maxLines: 3,overflow: TextOverflow.ellipsis,))],
                  ),
                  Row(
                    children: [const Text('Completed: '), Text('$completed')],
                  )
                ],
              )),
        ));
  }
}
