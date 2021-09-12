import 'package:flutter/material.dart';

class EnterField extends StatelessWidget {
  // const EnterField({ Key? key }, required String title) : super(key: key)
  // EnterField(String title, {bool isPasswoed = false});
  final String title;
  final bool isPassword;
  EnterField(this.title, {this.isPassword = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 6,
          ),
          Card(
            elevation: 5,
            child: TextField(

              obscureText: isPassword,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(8)),
                fillColor: Colors.white,
                filled: true,
                labelText: title,
              ),
            ),
          )
        ],
      ),
    );
  }
}

// Widget _entryField(String title, {bool isPassword = false}) {
//   return
// }