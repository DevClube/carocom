import 'package:carocom/classes/search.dart';
import 'package:carocom/screens/cart.dart';
import 'package:carocom/screens/settingUI/settingUI.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'category.dart';
import 'homepage.dart';



class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);


  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {


  int selectedIndex = 0;
  final screen = [
    HomePage(),
    categoryPage(),
    CartShop(),
    SettingUI(),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:  Text('caro.com',
          style: TextStyle(color: Colors.black,
            fontSize: 30,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon:Icon(Icons.search_rounded), color: Colors.black,
            iconSize: 34,
            onPressed: () {
              showSearch(context: context, delegate: DataSearch());
            },
          ),
        ],

      ),


        bottomNavigationBar: CurvedNavigationBar(

          index: selectedIndex,
          height: 55,
          items: <Widget>[
            Icon(Icons.home_outlined,color: Colors.white,),
            Icon(Icons.category_outlined,color: Colors.white,),
            Icon(Icons.shopping_cart_outlined,color: Colors.white,),
            Icon(Icons.account_circle_outlined,color: Colors.white,),

          ],
          color: Colors.black,
          buttonBackgroundColor: Colors.black,
          backgroundColor: Colors.white,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              selectedIndex = index ;
            });
          },
          letIndexChange: (index) => true,

        ),
        body: screen[selectedIndex],
    );
  }
}

