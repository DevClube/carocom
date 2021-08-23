import 'package:flutter/material.dart';

class DataSearch extends SearchDelegate{
  final cars = [
    'BMW',
    'Toyota',
    'Testa',
    'Ford',
    'Fiat',
    'BMW',
    'Toyota',
    'Testa',
    'Ford',
    'Fiat',
  ];
  final recentcars = [
    'Toyota',
    'Testa',
    'Ford',
    'Fiat',
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    return[
      IconButton(icon: Icon(Icons.clear),
        onPressed: (){}),
    ];


  }

  @override
  Widget buildLeading(BuildContext context) {
   return IconButton(
       icon: AnimatedIcon(
         icon:AnimatedIcons.menu_arrow,
         progress: transitionAnimation,
       ),
       onPressed: (){});
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty?recentcars:cars;
    return ListView.builder(itemBuilder: (context,index)=>ListTile(
      leading: Icon(Icons.directions_car_sharp),
      title: Text(suggestionList[index]),
    ),
      itemCount: suggestionList.length,
    );
  }



  
}