import 'package:flutter/material.dart';
import 'package:loginflutter/enterField.dart';
import 'package:loginflutter/terms.dart';

import 'signIn.dart';

class SignUpPage extends StatefulWidget {
  static const ruotName = '/signUp';
  // const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  // void loginScreen(BuildContext context) {
  //   Navigator.of(context).pushNamed(SignInPage.routName);
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
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                padding: EdgeInsets.fromLTRB(20, 20, 20, 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Register new account',
                      style: TextStyle(fontSize: 20),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            'I accept the',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Terms(),
                              ),
                            );
                          },
                          child: Text(
                            'terms and conditions',
                            style: TextStyle(color: Colors.red, fontSize: 20),
                          ),
                        ),
                      ],
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
