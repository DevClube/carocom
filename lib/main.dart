import 'package:carocom/classes/search.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      theme: new ThemeData(scaffoldBackgroundColor: const Color(0xff03045e)),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff03045e),
          title:  Text('caro.com',
          style: TextStyle(color: Color(0xffffba08),
          fontSize: 30,
          ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search_rounded, color: Color(0xffffba08),
              size: 34,),
              onPressed: () {
                showSearch(context: context, delegate: DataSearch());
              },
            ),
          ],

        ),
        bottomNavigationBar: CurvedNavigationBar(
          items: <Widget>[
            Icon(Icons.home_outlined),
            Icon(Icons.category_outlined),
            Icon(Icons.shopping_cart_outlined),
            Icon(Icons.account_circle_outlined),
          ],

        ),
      ),

    );
  }
}

