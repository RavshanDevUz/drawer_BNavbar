import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Asosiy()));
}

class Asosiy extends StatefulWidget {
  @override
  _AsosiyState createState() => _AsosiyState();
}

class _AsosiyState extends State<Asosiy> with TickerProviderStateMixin {
  List<Widget> widgetlar = [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.red,
        height: 200.0,
        child: Center(
          child: Text(
            '1-widget',
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold, fontFamily: 'DS'),
          ),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.deepOrange,
        height: 200.0,
        child: Center(
          child: Text(
            '2-widget',
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.orange,
        height: 200.0,
        child: Center(
          child: Text(
            '3-widget',
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.yellow,
        height: 200.0,
        child: Center(
          child: Text(
            '4-widget',
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.lightGreen,
        height: 200.0,
        child: Center(
          child: Text(
            '5-widget',
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.green,
        height: 200.0,
        child: Center(
          child: Text(
            '6-widget',
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    ),
  ];

  int hozirgiOyna = 0;

  void oynaniOzgartirish(oynaRaqami) {
    setState(() {
      hozirgiOyna = oynaRaqami;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('First app'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              height: 200,
              color: Colors.indigo,
              child: Center(
                child: Container(
                  height: 150,
                  width: 150,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/img.jpg"),
                  ),
                ),
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.home_outlined,
                    color: Colors.deepPurple,
                    size: 30,
                  ),
                  Container(
                    child: Text(
                      ' Bosh sahifa',
                      style: TextStyle(color: Colors.indigo, fontSize: 20),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      body:
      widgetlar[hozirgiOyna],
       bottomNavigationBar: BottomNavigationBar(
         currentIndex: hozirgiOyna,
         iconSize: 30,
         selectedItemColor: Colors.blueAccent,
         unselectedItemColor: Colors.greenAccent,
         items: [
           BottomNavigationBarItem(
               icon: Icon(
                 Icons.home_outlined,
               ),
               label: "Asosiy"),
           BottomNavigationBarItem(
               icon: Icon(
                 Icons.account_balance,
               ),
               label: "Balans"),
           BottomNavigationBarItem(
               icon: Icon(
                 Icons.account_balance_wallet_outlined,
               ),
               label: "Hamyon"),
           BottomNavigationBarItem(
               icon: Icon(
                 Icons.credit_card_outlined,
               ),
               label: "Credit Card"),
           BottomNavigationBarItem(
               icon: Icon(
                 Icons.settings_rounded,
               ),
               label: "Setting"),
           BottomNavigationBarItem(
               icon: Icon(
                 Icons.account_circle,
               ),
               label: "Akkaunt"),
         ],
         onTap: (index) {
           oynaniOzgartirish(index);
           print('Hozirgi oyna $index');
         },
       ),
    );
  }
}
