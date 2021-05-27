import 'package:flutter/material.dart';
import 'package:task2/screens/cartitem.dart';
import 'package:task2/screens/homepage.dart';
import 'package:task2/screens/registration_screen.dart';
import 'package:system_settings/system_settings.dart';

class DrawerListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        DrawerHeader(
          child: Center(
            child: Image(
              image: AssetImage('assets/logo.png'),
                semanticLabel: 'Company logo, E - verything'
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.blue.shade200,
          ),
        ),
        ListTile(
          title: Text('Home'),

          onTap: () {
            Navigator.push(context, MaterialPageRoute(
                builder: (context){
                  return HomePage();
                }
            ),);
            // Update the state of the app.
            // ...
          },
        ),
        ListTile(
          title: Text('Track your order'),
          onTap: () {
            // Update the state of the app.
            // ...
          },
        ),
        ListTile(
          title: Text('Cart Items'),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
                builder: (context){
                  return CartItems();
                }
            ),);
            // Update the state of the app.
            // ...
          },
        ),
        ListTile(
          title: Text('Accessibility'),
          onTap: () {
            SystemSettings.accessibility();


            // Update the state of the app.
            // ...
          },
        ),
        ListTile(
          title: Text('Help'),
          onTap: () {
            // Update the state of the app.
            // ...
          },
        ),
        ListTile(
          title: Text('Log Out'),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
                builder: (context){
                  return RegistrationScreen();
                }
            ),);

          },
        ),
      ],
    );
  }
}