import 'package:flutter/material.dart';
import 'package:task2/screens/BuyPage.dart';
import 'package:task2/screens/cartitem.dart';

class TopSelling extends StatelessWidget {
  final String brandName;
  final String imageName;
  TopSelling({this.brandName,this.imageName});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.blue.shade50,

        child: Column(
            children: <Widget>[
              Container(
                child: Image(

                  image: AssetImage('assets/$imageName.png'),

                ),
                  decoration: BoxDecoration(
                color: Color(0xffcadeff),
                  borderRadius: BorderRadius.all(Radius.circular(50.0))
                 ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                brandName,
                style: TextStyle(
                    fontSize: 15.0
                ),
              ),
              Row(
                children: <Widget>[
                  ElevatedButton(
                       style: ElevatedButton.styleFrom(
                       primary: Colors.teal.shade600, // background
                   // foreground
                         ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context){
                              return BuyItems();
                            }
                        ),);
                      },

                       child: Text(
                    'BUY',
                  )),

                  IconButton(
                    color: Colors.black,
                    icon: Icon(Icons.shopping_cart),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context){
                            return CartItems();
                          }
                      ),);
                    },
                  ),
                ],
              ),
            ]
        ),
      ),
    );
  }
}

