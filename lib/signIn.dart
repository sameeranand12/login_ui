


import 'package:flutter/material.dart';
import 'package:loginflutter/enterField.dart';
import 'package:loginflutter/forgetPass.dart';


import 'signIn.dart';

class SignInPage extends StatefulWidget {
  static const ruotName = '/signUp';
  // const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
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

                padding: EdgeInsets.fromLTRB(20, 20, 20, 50),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [

                    Text(
                      'Login to your account',
                      style: TextStyle(
                          fontSize: 20,
                        color: Colors.white
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    EnterField('Username'),
                    EnterField('Password', isPassword: true),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                        Container(

                          child: Text(
                            'Remember Me',
                            style: TextStyle(
                                fontSize: 20,
                              color: Colors.white
                            ),
                          ),
                        ),
                        SizedBox(width: 5,),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ForgotPasswordPage(),
                              ),
                            );
                          },
                          child: Text(
                            'Forget Password ?',
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 20

                            ),

                          ),
                        ),



                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width/8,
                      color: Colors.blue,
                      child: Center(
                        child: Text('SIGN IN',style: TextStyle(
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
