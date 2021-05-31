import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:date_range_picker/date_range_picker.dart' as DateRangePicker;
import 'package:page_transition/page_transition.dart';

// ignore: camel_case_types
class shoppingDesign extends StatefulWidget {
  @override
  _shoppingDesignState createState() => _shoppingDesignState();
}

// ignore: camel_case_types
class _shoppingDesignState extends State<shoppingDesign> {
  @override
  int val = 0;
  int price = 536;
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blue.shade100,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Icon(Icons.arrow_back),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      'Create Subscription',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 170,
              color: Colors.green[50],
              child: Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        height: 100,
                        child: Image.asset(
                          'Assets/tata.jpg',
                          height: 60,
                          width: 90,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15)),
                      )),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Tata Tea Gold (1Kg)',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 30.0),
                            child: Text(
                              '\u20B9$price',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          Text(
                            '\u20B9635.00',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 15,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '.1pkt',
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    children: [
                      Icon(Icons.cases_outlined),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Text(
                            'Quantity',
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Text('per day'),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.lightGreen)),
                    width: 150,
                    height: 45,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          child: Icon(
                            Icons.remove,
                            color: Colors.lightGreen,
                          ),
                          onTap: () {
                            if (val != 0) {
                              setState(() {
                                --val;
                              });
                            }
                          },
                        ),
                        Text('$val'),
                        InkWell(
                          child: Icon(
                            Icons.add,
                            color: Colors.lightGreen,
                          ),
                          onTap: () {
                            setState(() {
                              ++val;
                            });
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )),
            SizedBox(
              height: 5,
            ),
            Divider(
              color: Colors.black,
            ),
            repeat(context),
            SizedBox(
              height: 5,
            ),
            Divider(
              color: Colors.black,
            ),
            recharge(context),
            SizedBox(
              height: 5,
            ),
            Divider(
              color: Colors.black,
            ),
            date(context),
          ],
        ),
      ),
    );
  }

  Widget recharge(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          PageTransition(
              type: PageTransitionType.rightToLeft,
              child: MyStatefulWidget(),
              inheritTheme: true,
              ctx: context),
        );
      },
      child: Container(
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Row(
            children: [
              Icon(Icons.payment_outlined),
              SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Text(
                      'Recharge/Top Up',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Text(
                      '30 Deliveries',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.arrow_forward),
        )
      ])),
    );
  }

  Widget date(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () async {
            final List<DateTime> picked = await DateRangePicker.showDatePicker(
                context: context,
                initialFirstDate: new DateTime.now(),
                initialLastDate:
                    (new DateTime.now()).add(new Duration(days: 7)),
                firstDate: new DateTime(2015),
                lastDate: new DateTime(DateTime.now().year + 2));
            if (picked != null && picked.length == 2) {
              print(picked);
            }
          },
          child: Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    children: [
                      Icon(Icons.date_range_outlined),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 35.0),
                            child: Text(
                              'Start Date',
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15.0),
                            child: Text(
                              'Tomorrow',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.arrow_forward),
                )
              ])),
        ),
        Card(
          elevation: 15,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Container(
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            height: 130,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.green),
                      borderRadius: BorderRadius.circular(10)),
                  width: 150,
                  height: 50,
                  child: Center(
                    child: Text(
                      'Deliver Once',
                      style: TextStyle(color: Colors.green, fontSize: 20),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Your order value is'),
                            content: Text('${val * price * topup}'),
                          );
                        });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.green.shade500,
                        border: Border.all(color: Colors.green),
                        borderRadius: BorderRadius.circular(10)),
                    width: 150,
                    height: 50,
                    child: Center(
                      child: Text(
                        'Subscribed',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget repeat(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              children: [
                Icon(Icons.restore),
                SizedBox(
                  width: 20,
                ),
                Row(
                  children: [
                    Text(
                      'Repeat',
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "DAILY",
                      style: TextStyle(fontSize: 16, color: Colors.green),
                    )
                  ],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 40,
              ),
              Container(
                height: 40,
                width: 40,
                child: Center(
                  child: Text(
                    'M',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green),
              ),
              Container(
                height: 40,
                width: 40,
                child: Center(
                  child: Text(
                    'T',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green),
              ),
              Container(
                height: 40,
                width: 40,
                child: Center(
                  child: Text(
                    'W',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green),
              ),
              Container(
                height: 40,
                width: 40,
                child: Center(
                  child: Text(
                    'T',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green),
              ),
              Container(
                height: 40,
                width: 40,
                child: Center(
                  child: Text(
                    'F',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green),
              ),
              Container(
                height: 40,
                width: 40,
                child: Center(
                  child: Text(
                    'S',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green),
              ),
              Container(
                height: 40,
                width: 40,
                child: Center(
                  child: Text(
                    'S',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green),
              ),
              Icon(Icons.arrow_forward)
            ],
          )
        ],
      ),
    );
  }
}

int topup = 10;

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          ListTile(
            title: const Text('10'),
            leading: Radio(
              value: 10,
              groupValue: topup,
              onChanged: (value) {
                setState(() {
                  topup = value;
                  Navigator.of(context).pop();
                });
              },
            ),
          ),
          ListTile(
            title: const Text('20'),
            leading: Radio(
              value: 20,
              groupValue: topup,
              onChanged: (value) {
                setState(() {
                  topup = value;
                  Navigator.of(context).pop();
                });
              },
            ),
          ),
          ListTile(
            title: const Text('30'),
            leading: Radio(
              value: 30,
              groupValue: topup,
              onChanged: (value) {
                setState(() {
                  topup = value;
                  Navigator.of(context).pop();
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
