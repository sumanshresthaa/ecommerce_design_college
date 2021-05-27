import 'package:flutter/material.dart';
import 'package:task2/screens/cartitem.dart';
import 'package:task2/screens/drawer.dart';
import 'package:task2/screens/searchscreen.dart';

class SearchErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: DrawerListView(),
      ),
      appBar: AppBar(
        title: Text(
          'SEARCH',
          style: TextStyle(fontSize: 20.0),
        ),
        actions: [
          Center(
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.shopping_cart),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return CartItems();
                      }),
                    );
                  },
                ),
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return SearchBar();
                      }),
                    );
                  },
                ),
              ],
            ),
          )
        ],
      ),
      body: Container(
        // decoration: new BoxDecoration(
        //   image: new DecorationImage(
        //     image: new AssetImage("assets/brokenpage.png"),
        //       fit: BoxFit.fill,
        //     ),
        //   ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[



            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: Container(
                      width: 250,
                      height: 50,
                      child: TextField(
                        enabled: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'GoldStqr',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return SearchErrorPage();
                        }),
                      );
                    },
                  ),
                ],
              ),
            ),
            Divider(
              height: 20.0,
              color: Colors.grey.shade900,
            ),
              Expanded(
                  child: Column(

                    children: [
                      SizedBox(
                        height: 100.0,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
                        child: Center(
                          child: Text(
                            'SORRY!',
                            style: TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
                        child: Center(
                          child: Text(
                            'We cannot find the product you are looking for!',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20.0,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Center(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.green, // background
                              // foreground
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'GO BACK!',
                              style: TextStyle(fontSize: 20.0, color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),




          ],
        ),
      ),
    );
  }
}
