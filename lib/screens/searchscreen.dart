import 'package:flutter/material.dart';
import 'package:task2/screens/cartitem.dart';
import 'package:task2/screens/drawer.dart';
import 'package:task2/screens/SearchErrorPage.dart';
import 'package:task2/screens/homepage.dart';

class SearchBar extends StatelessWidget {
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
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context){
                          return CartItems();
                        }
                    ),);
                  },
                ),

                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context){
                          return HomePage();
                        }
                    ),);
                  },
                ),
              ],
            ),
          )
        ],
      ),
      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: Container(
                    width: 250,
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Search',
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
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context){
                          return SearchErrorPage();
                        }
                    ),);
                  },
                ),
              ],
            ),
          ),
          Divider(
            height: 20.0,
            color: Colors.grey.shade900,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
            child: Text(
              'Search History',

              style: TextStyle(
                  fontSize: 17.0
              ),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RecentButtons('Guitar'),
              RecentButtons('Amp'),
              RecentButtons('Toys'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RecentButtons('Watch'),
              RecentButtons('Bottle'),
              RecentButtons('Jacket'),
            ],
          ),

        ],
      ),
    );
  }
}

class RecentButtons extends StatelessWidget {
final String productName;

RecentButtons(this.productName);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(20.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.grey.shade200, // background
          // foreground
        ),


          child: Text(
            productName,
            style: TextStyle(
              fontSize: 13.0,
              color: Colors.grey.shade700
            ),
          ),
       onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                   builder: (context){
                    return CartItems();
                     },
      ),
    );
  },
    ),
    );
  }
}
