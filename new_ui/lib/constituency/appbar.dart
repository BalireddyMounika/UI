import 'package:flutter/material.dart';

class headerscreen extends StatelessWidget {
  const headerscreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow.shade700,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            CircleAvatar(
              backgroundColor: Colors.yellow.shade700,
              backgroundImage: const AssetImage('assets/images/PP.png'),
              radius: 50,
            ),
            const Text(
              'Prasada Rao Pyala',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 17),
            ),
          ]),
          CircleAvatar(
            backgroundColor: Colors.yellow.shade700,
            backgroundImage: AssetImage('assets/images/tdp.png'),
            radius: 20,
          ),
          const Text(
            'TELUGU DESAM PARTY',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const CircleAvatar(
            backgroundColor: Colors.yellow,
            backgroundImage: AssetImage("assets/images/TDPlogo.jpg"),
          ),
        ],
      ),
    );
  }
}
