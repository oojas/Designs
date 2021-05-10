import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:route_transitions/route_transitions.dart';

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
                  height: height / 3.5,
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
                    child: IconButton(
                        icon: Icon(
                          Icons.search,
                          size: 30,
                        ),
                        onPressed: () {})),
                Positioned(
                    top: 1,
                    left: 1,
                    child: IconButton(
                        icon: Icon(
                          Icons.menu,
                          size: 30,
                        ),
                        onPressed: () {})),
                Positioned(
                  left: 60,
                  top: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                          radius: 60,
                          backgroundImage: NetworkImage(
                              'https://image.freepik.com/free-vector/businessman-profile-cartoon_18591-58479.jpg')),
                      SizedBox(width: 30),
                      Column(
                        children: [
                          Text(
                            'Ojas Gupta',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 28),
                          ),
                          Text(
                            'Big Data Developer',
                            style: TextStyle(fontSize: 18),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'My Tasks',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 26),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        'https://www.freeiconspng.com/thumbs/tasks-icon/tasks-icon-14.png'),
                  ),
                ),
              ],
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.red,
                child: Text(
                  'D',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              title: Text(
                'To-Do List',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              subtitle: Text('What you need to do'),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.yellow,
                child: Text(
                  'P',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              title: Text(
                'In Progress',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              subtitle: Text('3 Tasks are in progress'),
            ),
            ListTile(
              leading: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.blue,
                  child: Icon(Icons.done_all_outlined)),
              title: Text(
                'Tasks Completed',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              subtitle: Text('4 tasks are finished'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  child: Container(
                    width: 190,
                    height: 250,
                    decoration: BoxDecoration(color: Colors.green[500]),
                  ),
                ),
                InkWell(
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    child: Container(
                      width: 190,
                      height: 250,
                      decoration: BoxDecoration(color: Colors.red),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(PageRouteTransition(
                        animationType: AnimationType.slide_right,
                        builder: (context) => page()));
                  },
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  child: Container(
                    width: 190,
                    height: 250,
                    decoration: BoxDecoration(color: Colors.yellow),
                  ),
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  child: Container(
                    width: 190,
                    height: 250,
                    decoration: BoxDecoration(color: Colors.lightBlue),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Ojas'),
    );
  }
}
