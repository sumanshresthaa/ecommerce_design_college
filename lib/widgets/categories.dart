import 'package:flutter/material.dart';


class Categories extends StatelessWidget {
  final IconData icon;
  final String name;
  Categories({this.icon,this.name});

  @override
  Widget build(BuildContext context) {
    return Container(


      child: Column(
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.teal.shade500,
            radius: 30,
            child: Icon(
              icon,
              size: 25.0,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),

          Text(
            name,
            style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.bold
            ),
          )
        ],
      ),
    );
  }
}
