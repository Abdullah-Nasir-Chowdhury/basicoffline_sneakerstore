import 'package:flutter/material.dart';
import 'package:basicoffline_sneakerstore/components/bottom_nav_bar.dart';
import 'package:basicoffline_sneakerstore/pages/shoppage.dart';
import 'package:basicoffline_sneakerstore/pages/cartpage.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;

  void navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  final List<Widget> _pages = [
    //shop page
    const ShopPage(),
    //cart page
    const CartPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(Icons.menu),
              color: Colors.black,
              onPressed: (){
                Scaffold.of(context).openDrawer();
              },
            );
          }
        )
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[800],
        child: Column(
          children: [
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Image.asset(
                  ("assets/logo_nobg.png"),
                  color: Colors.white,
                )
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.fromLTRB(18.0,0,0,0),
              child: ListTile(
                leading: Icon(
                  Icons.home,
                  size: 30,
                  color: Colors.white,
                ),
                title: Text("Home",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                )
                )
                ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(18.0,0,0,0),
              child: ListTile(
                  leading: Icon(
                    Icons.info,
                    size: 30,
                    color: Colors.white,
                  ),
                  title: Text("About",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      )
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(18.0,190.0,18.0,0),
              child: ListTile(
                  leading: Icon(
                    Icons.logout,
                    size: 30,
                    color: Colors.white,
                  ),
                  title: Text("LogOut",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      )
                  )
              ),
            ),
          ],
        )
      ),
      body: _pages[_selectedIndex]
    );
  }
}
