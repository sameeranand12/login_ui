


import 'package:flutter/material.dart';
import 'package:loginflutter/enterField.dart';
import 'package:loginflutter/terms.dart';

import 'signIn.dart';

class ForgotPasswordPage extends StatefulWidget {
  static const ruotName = '/signUp';
  // const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  // void loginScreen(BuildContext context) {
  //   Navigator.of(context).pushNamed(ForgotPasswordPage.routName);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              Container(
                //margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/10),
                child: Center(
                  child: Image(
                    image: AssetImage(
                      'assets/images/p3.png',
                    ),
                    width: 234,
                    // height: MediaQuery.of(context).size.height/2,
                  ),
                ),
              ),

              SizedBox(
                height: 6,
              ),
              Container(

                padding: EdgeInsets.fromLTRB(20, 20, 20, 50),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [

                    Text(
                      'Reset Password',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    EnterField('Name'),
                    EnterField('Email'),
                    EnterField('Username'),
                    EnterField('Password', isPassword: true),
                    SizedBox(
                      height: 30,
                    ),

                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width/8,
                      color: Colors.deepOrange,
                      child: Center(
                        child: Text('RESET PASSWORD',style: TextStyle(
                          color: Colors.white,
                          // fontSize: 30
                        ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }
}
