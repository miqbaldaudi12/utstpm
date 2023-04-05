import 'package:flutter/material.dart';

class ProfileSubMenuPage extends StatelessWidget {
  const ProfileSubMenuPage({Key? key}) : super(key: key);

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
              SizedBox(height: 10),
              Text(
                'Teknologi Dan Pemrograman Mobile IF-C',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'Sleman, 20 Desember 2002',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'Game Developer',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ));
  }
}