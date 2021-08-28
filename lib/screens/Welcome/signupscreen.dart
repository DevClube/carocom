import 'package:carocom/constant/color.dart';
import 'package:carocom/screens/Welcome/LoginScreen.dart';
import 'package:carocom/widget/CustumTextField.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  final GlobalKey<FormState> _globalKey=GlobalKey<FormState>();
  static String id= 'SignUp';



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
       body: Container(
  child: Form(
    key: _globalKey,
    child: ListView(
      children: [
        Container(
          //padding: EdgeInsets.only(top: 10 ),
          child: Container(
            height: height*.4,
            child: Stack(
              //alignment: Alignment.center,
              children: [
                Image(
                  image: AssetImage('images/sell.png'),
                ),


              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),

          child: CustomTextField(
            hint: 'Enter your name',
            icon: Icons.account_circle_outlined,
          )
        ),
        SizedBox(
          height: height*.01,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),

          child: CustomTextField(
            hint:'Enter your email',
            icon: Icons.email_outlined,
          ),
        ),
        SizedBox(
          height: height*.01,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),

          child: CustomTextField(

            hint: 'Enter your passowrd',
            icon: Icons.lock_outline,
          ),

        ),
        SizedBox(
          height: height*.02,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:160 ),
          child: FlatButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
            ),
            height: 50,
            color: lightgreen,
            child:Text(
                'SIGN UP',
                style:TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  letterSpacing: 2.2,

                )
            ) ,
            onPressed: () async
            {
              if(_globalKey.currentState!.validate())
              {
                //do something
              }
            },
          ),
        ),
        SizedBox(
          height: height*.01,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Already have an account? ',
              style: TextStyle(
                color: darkblue,
                fontSize: 16,
              ),),
            GestureDetector(
              onTap: (){
                Navigator.pushReplacementNamed(context, LoginScreen.id);
              },
              child: Text('Login',
                style: TextStyle(
                  color: lightgreen,
                  fontSize: 19 ,),),
            ),
          ],
        ),
        SizedBox(
          height: height*.02,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:140),
          child: Container(
            decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                width: 0.2,
                color: Colors.black,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: (){},
                  icon: Image.asset('images/search.png'),
                  //icon: FaIcon(FontAwesomeIcons.google,),
                ),
                GestureDetector(
                  onTap: (){

                  },
                  child: Text('SIGN IN WITH GOOGLE',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16 ,),),
                ),
              ],
            ),
          ),
        ),


      ],
    ),
  ),
       ),
    );
  }
}
