import 'package:flutter/material.dart';
import 'package:loginflutter/signIn.dart';
import 'package:loginflutter/signUp.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/10),
            child: Center(
              child: Image(
                image: AssetImage(
                  'assets/images/p3.png',
                ),
                //width: 234,
                height: MediaQuery.of(context).size.height/2,
              ),
            ),
          ),
          SizedBox(
            height: 150,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SignUpPage(),
                ),
              );
            },
            child: Container(

              height: 30,
              width: MediaQuery.of(context).size.width/2,
              color: Colors.deepOrange,
              child: Center(
                child: Text('REGISTER',style: TextStyle(
                  color: Colors.white
                ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SignInPage(),
                ),
              );
            },
            child: Container(
              height: 30,
              width: MediaQuery.of(context).size.width/2,
              color: Colors.blue,
              child: Center(
                child: Text('I ALREADY HAVE AN ACCOUNT',style: TextStyle(
                    color: Colors.white
                ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
