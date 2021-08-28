import 'package:flutter/material.dart';
import 'package:carocom/constant/color.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final list_item = [
    {
      "name": "car1",
      "pic" : "images/car1.jpg",
      "price" : "199"
    },
    {
      "name": "car2",
      "pic" : "images/car2.jpg",
      "price" : "1002"
    },
    {
      "name": "car1",
      "pic" : "images/car3.jpg",
      "price" : "99"
    },
    {
      "name": "car1",
      "pic" : "images/car1.jpg",
      "price" : "199"
    },
    {
      "name": "car2",
      "pic" : "images/car2.jpg",
      "price" : "1002"
    },
    {
      "name": "car1",
      "pic" : "images/car3.jpg",
      "price" : "99"
    },
    {
      "name": "car1",
      "pic" : "images/car1.jpg",
      "price" : "199"
    },
    {
      "name": "car2",
      "pic" : "images/car2.jpg",
      "price" : "1002"
    },
    {
      "name": "car1",
      "pic" : "images/car3.jpg",
      "price" : "99"
    },
    {
      "name": "car1",
      "pic" : "images/car1.jpg",
      "price" : "199"
    },
    {
      "name": "car2",
      "pic" : "images/car2.jpg",
      "price" : "1002"
    },
    {
      "name": "car1",
      "pic" : "images/car3.jpg",
      "price" : "99"
    }
  ];
  @override
  Widget build(BuildContext context) {


    return Scaffold(

 backgroundColor: Colors.white,
      body: Container(

          child:Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(

                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,),
                itemCount: list_item.length,
                itemBuilder: (BuildContext context, int index,)
                {
                  return Car(

                    Car_name: list_item[index]["name"],
                    Car_pic: list_item[index]["pic"],
                    Car_price: list_item[index]["price"],
                  );
                }



            ),
          ),
        ),





    );
  }
}

class Car extends StatelessWidget {
  final Car_name;
  final Car_pic;
  final Car_price;

  Car(
      {
        this.Car_name,
        this.Car_price,
        this.Car_pic,


      }
      );


  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Card(

        child: Hero(tag: Car_name,
            child: Material(

              child: InkWell(

                onTap: (){},
                child:GridTile(

                    footer: Container(
                      color: Colors.black.withOpacity(0.9),
                      child: ListTile(
                        focusColor: Colors.white,
                        leading: Text(Car_name,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                        title: Text(Car_price,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                      ),
                    ),
                    child: Image.asset(Car_pic,fit: BoxFit.cover,) ,

                    //Image.asset(Car_pic,fit: BoxFit.cover,),

                  ),

              ),
            )),
      ),
    );
  }
}
