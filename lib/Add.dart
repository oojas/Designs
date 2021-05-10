import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// ignore: camel_case_types
class add extends StatefulWidget {
  @override
  _addState createState() => _addState();
}

// ignore: camel_case_types
class _addState extends State<add> {
  int val = 0;
  int val1 = 0;
  int sum = 0;
  @override
  int Sum(int a, int b) {
    int c = 0;
    return a + b;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(
          'Add Numbers',
          style: TextStyle(color: Colors.white, fontSize: 23),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                onPressed: () {
                  setState(() {
                    val++;
                  });
                },
                hoverColor: Colors.white,
                hoverElevation: 4,
                elevation: 5,
                color: Colors.green.shade400,
                child: Text('$val'),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    val1++;
                  });
                },
                hoverColor: Colors.white,
                hoverElevation: 4,
                elevation: 5,
                color: Colors.pink.shade400,
                child: Text('$val1'),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
              ),
            ],
          ),
          MaterialButton(
            onPressed: () {
              setState(() {
                sum = Sum(val, val1);
              });
            },
            hoverColor: Colors.white,
            hoverElevation: 4,
            elevation: 5,
            color: Colors.pink.shade400,
            child: Text('$sum'),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          )
        ],
      ),
    );
  }
}
