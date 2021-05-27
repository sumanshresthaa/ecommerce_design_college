import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task2/screens/cartitem.dart';
import 'package:task2/screens/registration_screen.dart';
import 'package:task2/widgets/categories.dart';
import 'package:task2/widgets/topselling.dart';
import 'package:task2/screens/drawer.dart';
import 'package:task2/screens/searchscreen.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var images2 = [
    'assets/lenovo.png',
    'assets/guitar1.png',
    'assets/shoes1.png',
    'assets/guitar1.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: DrawerListView(),
        ),
        appBar: AppBar(
          title: Text(
            'HOME',
            style: TextStyle(fontSize: 20.0),
          ),
          actions: [
            Center(
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return SearchBar();
                        }),
                      );
                    },
                  ),
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
                ],
              ),
            )
          ],
        ),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Top Selling',
                    style: TextStyle(fontSize: 25.0),
                  ),
                  Divider(
                    height: 20.0,
                    color: Colors.grey.shade900,
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 12),
                          height: 300,
                          child: Swiper(
                            autoplay: true,
                            autoplayDelay: 1500,
                            curve: Curves.easeIn,
                            itemCount: 4,
                            itemBuilder: (BuildContext context, int index) {
                              return ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image(
                                    image: AssetImage(images2[index]),
                                    semanticLabel: 'Top Selling items',
                                    fit: BoxFit.cover,
                                  ));
                            },
                            viewportFraction: 0.8,
                            scale: 0.9,
                            pagination: SwiperPagination(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 25.0,
                    color: Colors.grey.shade800,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      'Categories',
                      style: TextStyle(fontSize: 25.0),
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Categories(
                        icon: Icons.headset,
                        name: 'Music',
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Categories(
                        icon: Icons.computer,
                        name: 'Gaming',
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Categories(
                        icon: Icons.motorcycle_sharp,
                        name: 'Babies',
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Categories(
                        icon: Icons.restaurant,
                        name: 'Food',
                      ),
                    ],
                  ),
                  Divider(
                    height: 20.0,
                    color: Colors.grey.shade900,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'GET NOW!',
                    style: TextStyle(fontSize: 25.0),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top: 20.0),
                    child: Container(
                      color: Color(0xffF7E8F0),
                      child: Padding(
                        padding:
                            EdgeInsets.only(top: 20.0, left: 2.0, right: 2.0),
                        child: Row(
                          children: <Widget>[
                            TopSelling(
                                brandName: 'Adidas Shoes', imageName: 'shoes'),
                            SizedBox(
                              width: 10.0,
                            ),
                            TopSelling(
                                brandName: 'Lenovo Laptops', imageName: 'lenovo'),
                            SizedBox(
                              width: 10.0,
                            ),
                            TopSelling(
                                brandName: 'Electric Guitar',
                                imageName: 'guitar'),
                          ],
                        ),
                      ),
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

class BottomButton extends StatelessWidget {
  final IconData icons;
  final String bottomName;

  BottomButton({this.bottomName, this.icons});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ElevatedButton.styleFrom(primary: Color(0xff1a73e8)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Icon(
              icons,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(2.0),
            child: Text(
              bottomName,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      onPressed: () {},
    );
  }
}
