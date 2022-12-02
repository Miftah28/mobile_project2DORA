import 'package:flutter/material.dart';
import 'pages/people.dart';
import 'pages/profile.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final items = const [
    Icon(
      Icons.home,
      size: 30,
    ),
    Icon(
      Icons.water_drop,
      size: 30,
    ),
    Icon(
      Icons.bloodtype_sharp,
      size: 30,
    ),
  ];

  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text('Curved Navigation Bar'),
        backgroundColor: Colors.red,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        items: items,
        index: index,
        onTap: (selctedIndex) {
          setState(() {
            index = selctedIndex;
          });
        },
        height: 70,
        backgroundColor: Colors.transparent,
        animationDuration: const Duration(milliseconds: 300),
        // animationCurve: ,
      ),
      body: Container(
          color: Colors.white,
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          child: getSelectedWidget(index: index)),
          
          //sidebar
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            // const DrawerHeader(
            //   decoration: BoxDecoration(
            //     color: Colors.red,
            //   ),
            //   child: Text('Drawer Header'),
            //   height: 50,
            // ),
            Container(
              height: 181,
              child: const Center(
                child: Text(
                  'DORA',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                child: Text('Login',
                    style: TextStyle(
                      color: Colors.black,
                    )),
                onPressed: () {},
              ),
            ),
            Container(
              width: double.infinity,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                child: Text('Register',
                    style: TextStyle(
                      color: Colors.black,
                    )),
                onPressed: () {},
              ),
            ),
          ],
        ),
        backgroundColor: Colors.red,
      ),
    );
  }

  Widget getSelectedWidget({required int index}) {
    Widget widget;
    switch (index) {
      case 0:
        widget = const People();
        break;
      case 1:
        widget = const Profile();
        break;
      default:
        widget = const People();
        break;
    }
    return widget;
  }
}
