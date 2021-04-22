import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// ignore: camel_case_types
class d1 extends StatefulWidget {
  @override
  _d1State createState() => _d1State();
}

// ignore: camel_case_types
class _d1State extends State<d1> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                Container(
                  height: height / 3,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.yellowAccent,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(35),
                        bottomRight: Radius.circular(35)),
                  ),
                ),
                Positioned(
                    top: 1,
                    right: 1,
                    child:
                        IconButton(icon: Icon(Icons.search), onPressed: () {})),
                Positioned(
                    top: 1,
                    left: 1,
                    child:
                        IconButton(icon: Icon(Icons.menu), onPressed: () {})),
                Positioned(
                  left: 100,
                  top: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage(
                              'https://image.freepik.com/free-vector/businessman-profile-cartoon_18591-58479.jpg')),
                      SizedBox(width: 30),
                      Text(
                        'Ojas Gupta',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 28),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
