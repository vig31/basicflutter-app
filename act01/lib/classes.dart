import 'package:flutter/material.dart';

class MyBotton extends StatefulWidget {
  @override
  MybottonState createState() {
    return MybottonState();
  }
}

class MybottonState extends State<MyBotton> {
  // required things
  int counter = 0;
  List<String> hindinums = [
    "Aek-1",
    "Tho-2",
    "Theen-3",
    "Char-4",
    "Panch-5",
    "Cha-6",
    "Sath-7",
    "Aat-8",
    "Nau-9",
    "Thass-10"
  ];
  String frnttxt = "H I N D I-N U M B E R S";
  // OVER REQUIRED
  //WORKING PART OF APP CALLED BUILD
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Act-1',
          style: TextStyle(fontSize: 18.0, color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                frnttxt,
                style:
                    TextStyle(fontSize: 35.0, color: Colors.orange),
              ),
              Padding(
                padding: EdgeInsets.all(12.0),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: pressAction,
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
        splashColor: Colors.indigo,
        backgroundColor: Colors.orange,
      ),
      backgroundColor: Colors.black,
    );
  }

  //onpressed acction declaration
  void pressAction() {
    setState(() {
      frnttxt = hindinums[counter];
      if (counter < 9) {
        counter++;
      } else {
        counter = 0;
      }
    });
  }
}
