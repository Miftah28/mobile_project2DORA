import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  final ScrollController _homeController = ScrollController();

  Widget _listViewBody() {
    return ListView.separated(
        controller: _homeController,
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: Text(
              'Item $index',
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(
              thickness: 1,
            ),
        itemCount: 20);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
        backgroundColor: Colors.red,
      ),
      body: _listViewBody(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.water_drop),
            label: 'Stok Darah',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bloodtype_sharp),
            label: 'Donor Darah',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: (int index) {
          switch (index) {
            case 0:
              // only scroll to top when current index is selected.
              if (_selectedIndex == index) {
                _homeController.animateTo(
                  0.0,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeOut,
                );
              }
              break;
            case 1:
              // only scroll to top when current index is selected.
              if (_selectedIndex == index) {
                _homeController.animateTo(
                  0.0,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeOut,
                );
              }
              break;
            case 2:
              // only scroll to top when current index is selected.
              if (_selectedIndex == index) {
                _homeController.animateTo(
                  0.0,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeOut,
                );
              }
              break;
          }
          setState(
            () {
              _selectedIndex = index;
            },
          );
        },
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
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
}
