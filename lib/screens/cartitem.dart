import 'package:flutter/material.dart';
import 'package:task2/screens/BuyPage.dart';
import 'package:task2/screens/drawer.dart';

class CartItems extends StatefulWidget {
  @override
  _CartItemsState createState() => _CartItemsState();
}

class _CartItemsState extends State<CartItems> {
  bool isChecked = false;
  createAlertDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Center(

              child: Text(
                'Dear Customer',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            content: Text(
              'You are about to purchase the items from your cart. Please use cash or card for your purchase. Happy Shopping! ',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15.0),
            ),
            actions: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.red.shade400, // background
                  // foreground
                ),
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text(
                  'Cancel',
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 60.0),
                child: ElevatedButton(

                  style: ElevatedButton.styleFrom(
                    primary: Colors.green.shade400,
                    // background
                    // foreground
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context){
                          return BuyItems();
                        }
                    ),);
                  },
                  child: Text(
                    'Proceed',
                    style: TextStyle(fontSize: 15.0, color: Colors.white),
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
            'CART ITEMS',
            style: TextStyle(fontSize: 20.0),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
        body: ListView(
          children:[ Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Divider(
                height: 20.0,
                color: Colors.grey.shade900,
              ),
              NewItem(imageName: 'guitar', brandName: 'Ibanez sg series ',
                  icon: Icons.check_box, stockAvailable: 'In Stock', price: 'Rs.55,000/-',colour: Colors.green),
              Divider(
                height: 20.0,
                color: Colors.grey.shade900,
              ),
              NewItem(imageName: 'lenovo', brandName: 'Lenovo Legion 5',
                icon: Icons.check_box_outline_blank,stockAvailable: 'Out of Stock', price: 'Rs.1,65,000/-', colour: Colors.red),
              Divider(
                height: 20.0,
                color: Colors.grey.shade900,
              ),
              NewItem(imageName: 'shoes', brandName: 'Gold Star Shoes',
                  icon: Icons.check_box_outline_blank,stockAvailable: 'Out of Stock', price: 'Rs.5,000/-', colour: Colors.red),
              Divider(
                height: 20.0,
                color: Colors.grey.shade900,
              ),
              Padding(
                padding:  EdgeInsets.all(15.0),
                child: Row(
                  children: <Widget>[
                    // Icon(
                    //   Icons.check_box_outline_blank,
                    //   color: Colors.blue,
                    // ),
                    Checkbox(
                      activeColor: Colors.lightBlueAccent,
                      value: isChecked,
                      onChanged: (newValue){
                        setState(() {
                          isChecked = newValue;
                        });

                      },

                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:20.0),
                      child: Text(
                        'ALL',
                        style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.bold),
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
                padding:  EdgeInsets.all(17.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      'GRAND TOTAL : ',
                      style: TextStyle(fontSize: 17.0),
                    ),
                    Container(
                      width: 140,
                      height: 50,
                      child: TextField(
                          enabled: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: '55,000',
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 5.0,right: 0.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue, // background
                          // foreground
                        ),
                        onPressed: (){

                          createAlertDialog(context);
                        },
                        child: Text(
                          'CHECK OUT',
                          style: TextStyle(

                              fontSize: 10.0,
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
    ],
        ),);
  }
}

class NewItem extends StatefulWidget {
  final String imageName;
  final String brandName,stockAvailable,price;
  final IconData icon;
  final Color colour;

  NewItem({this.imageName, this.brandName, this.icon,this.price,this.stockAvailable, this.colour});

  @override
  _NewItemState createState() => _NewItemState();
}

class _NewItemState extends State<NewItem> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 15.0),
      child: Row(
        children: <Widget>[
          Checkbox(
            activeColor: Colors.lightBlueAccent,
            value: isChecked,
            onChanged: (newValue){
              setState(() {
                isChecked = newValue;
              });

            },

          ),

          // Icon(
          //  widget.icon,
          //   color: Colors.blue,
          // ),
          SizedBox(
            width: 30.0,
          ),
          Container(
            height: 100.0,
            child: Image(
              image: AssetImage('assets/${widget.imageName}.png'),
            ),
          ),
          SizedBox(
            width: 30.0,
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(


                  child: Padding(
                    padding:  EdgeInsets.all(2.0),
                    child: Text(
                      widget.brandName,
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 15.0,
                          color: Color(0xff2298f1)),
                    ),
                  ),
                  // decoration: BoxDecoration(
                  //   color: Color(0xffcadeff),
                  //   borderRadius: BorderRadius.all(Radius.circular(25.0))
                  // ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  widget.stockAvailable ,

                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 15.0,
                  color: widget.colour,
                  ),

                ),
                SizedBox(
                  height: 10.0,
                ),

                Text(
                  widget.price,
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 15.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
