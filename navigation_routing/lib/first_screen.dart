// import 'dart:html';

import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 252, 246, 252),
      appBar: AppBar(title: Text("Navigation & Routing")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/secondScreen');
              },
              child: Text('Go To Second Screen')),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: (() {
                Navigator.pushNamed(context, '/secondScreenWithData',
                    arguments: 'Hello From First Screen!');
              }),
              child: Text('Navigation with Data')),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: (() async {
                final scaffoldMessenger = ScaffoldMessenger.of(context);
                final result =
                    await Navigator.pushNamed(context, '/returnDataScreen');
                SnackBar snackBar =
                    SnackBar(content: Text('Nama anda $result'));
                scaffoldMessenger.showSnackBar(snackBar);
              }),
              child: Text('Return Data From Another Screen')),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: (() {
                Navigator.pushNamed(context, '/replacementScreen');
              }),
              child: Text('Replace Screen'))
        ],
      )),
    );
  }
}
