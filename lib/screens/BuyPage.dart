import 'package:flutter/material.dart';
import 'package:task2/screens/cartitem.dart';
import 'package:task2/screens/drawer.dart';
import 'package:task2/screens/homepage.dart';

class BuyItems extends StatelessWidget {
  createAlertDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Center(

              child: Text(
                'Payment Successful',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            content: Text(
              'Congratulations on successfully ordering your product. Please expect your order within 3-4 working days. Happy Shopping! ',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15.0),
            ),
            actions: <Widget>[
              Padding(
                padding:  EdgeInsets.only(right: 125.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green.shade400, // background
                    // foreground
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context){
                          return HomePage();
                        }
                    ),);
                  },
                  child: Text(
                    'OK',
                    style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.white
                    ),
                  ),
                ),
              ),

            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: DrawerListView(),
        ),
        appBar: AppBar(
          title: Text(
            'BUY ITEMS',
            style: TextStyle(fontSize: 20.0),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.arrow_back_ios),
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
        body: ListView(
          children: [Column(
            children: <Widget>[
              Divider(
                height: 20.0,
                color: Colors.grey.shade900,
              ),
              NewItem(imageName: 'guitar', brandName: 'Ibanez sg special series (24-fret sterling strings)'),
              Divider(
                height: 20.0,
                color: Colors.grey.shade900,
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.check_box,
                      color: Colors.blue,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'ALL',
                        style: TextStyle(fontSize: 10.0),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 20.0,
                color: Colors.grey.shade900,
              ),
              SizedBox(
                height: 40.0,
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      'Shipping Address : ',
                      style: TextStyle(fontSize: 15.0),
                    ),
                    Container(
                      width: 130,
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 20.0,
                color: Colors.grey.shade900,
              ),

              Padding(
                padding: EdgeInsets.all(17.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      'GRAND TOTAL : ',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    Container(
                      width: 110,
                      height: 50,
                      child: TextField(
                        enabled: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: '55,000/-',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5.0, right: 0.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue, // background
                          // foreground
                        ),
                        onPressed: () {
                         createAlertDialog(context);
                        },
                        child: Text(
                          'CHECK OUT',
                          style: TextStyle(
                              fontSize: 10.0, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
    ],
        ));
  }
}

class NewItem extends StatelessWidget {
  final String imageName;
  final String brandName;

  NewItem({this.imageName, this.brandName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: <Widget>[
          Icon(
            Icons.check_box,
            color: Colors.blue,
          ),
          Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Container(
                  height: 200.0,
                  child: Image(
                    image: AssetImage('assets/$imageName.png'),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0,left: 20.0),
                child: Container(
                  child: Text(
                    brandName,
                    style: TextStyle(fontSize: 15.0,
                    color: Colors.grey.shade700),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top:10.0, left: 10.0),
                child: Text(
                  'Rs.55,000/-',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.green,
                  ),
                ),
              ),


            ],
          ),
        ],
      ),
    );
  }
}
