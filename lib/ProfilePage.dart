import 'package:flutter/material.dart';
import 'ProfileSubMenu.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
          backgroundColor: Colors.deepOrange,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('images/foto.JPG'),
              ),
              SizedBox(height: 20),
              Text(
                'Muhammad Iqbal Daud Ibrahim',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 10),
              Text(
                '123200076',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 20,
              ),
              //ElevatedButton(onPressed: Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileSubMenuPage()),), child: Text('Sub Menu Detail'))
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProfileSubMenuPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.deepOrange, // Background color
                  ),
                  child: Text('Sub Menu Detail')),
            ],
          ),
        ));
  }
}