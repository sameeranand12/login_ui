import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Terms extends StatelessWidget {
  const Terms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 35),
                Container(
                  child: Center(
                    child: Image(
                      image: AssetImage(
                        'assets/images/p3.png',
                      ),
                      width: 234,
                      // height: MediaQuery.of(context).size.height/2,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Text(
                'TERMS AND CONDITIONS',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Container(
              child: Center(
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dui vulputate malesuada cursus sedLorem ipsum dolor sit amet, consectetur adipiscing elit. Dui vulputate malesuada cursus sedDui vulputate malesuada cursus sed .Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dui vulputate malesuada cursus sed',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
