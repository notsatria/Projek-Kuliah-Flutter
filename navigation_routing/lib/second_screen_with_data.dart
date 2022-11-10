import 'package:flutter/material.dart';

class SecondScreenWithData extends StatelessWidget {
  final String data;

  const SecondScreenWithData(this.data, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Text(data),
            margin: EdgeInsets.only(bottom: 10),
          ),
          ElevatedButton(
              onPressed: (() {
                Navigator.pop(context);
              }),
              child: Text("Back"))
        ],
      )),
    );
  }
}
