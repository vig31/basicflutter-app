import 'package:flutter/material.dart';

class MyBotton extends StatefulWidget {
  @override
  MyBottonstate createState() {
    return MyBottonstate();
  }
}

class MyBottonstate extends State<MyBotton> {
  int counter = 0;
  List<String> nums = [
    "Aek \n 1",
    "Tho \n 2",
    "Theen \n 3",
    "Char \n 4",
    "Panch \n 5",
    "Cha \n 6",
    "Sath \n 7",
    "Aat \n 8",
    "Nau \n 9",
    "Thass \n 10"
  ];
  String defaultHindi = "Hindi Nums";

  void presingaction() {
    setState(() {
      defaultHindi = nums[counter];
      if (counter < 9) {
        counter = counter + 1;
      } else {
        counter = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('statefull app'),
        backgroundColor: Colors.blue[900],
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                defaultHindi,
                style: TextStyle(fontSize: 30.0),
              ),
              Padding(
                padding: EdgeInsets.all(9.5),
              ), //padding for text
              RaisedButton(
                onPressed: presingaction,
                child: Text('click'),
                color: Colors.transparent,
                splashColor: Colors.indigo,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
