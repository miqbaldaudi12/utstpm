import 'package:flutter/material.dart';
import 'HitungTrapesium.dart';
import 'HitungTabung.dart';

double kelilingTrapesium = 0;
double luasTrapesium = 0;

double luasPermukaanTabung = 0;
double kelilingPermukaanTabung = 0;

class BangunDatar extends StatefulWidget {
  const BangunDatar({Key? key}) : super(key: key);

  @override
  _BangunDatar createState() => _BangunDatar();
}

class _BangunDatar extends State<BangunDatar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bangun Datar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> HitungTrapesium())), child: Text("Trapesium")),
                        SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> HitungTabung())), child: Text("Tabung")),
          ],
        ),
      ),
    );
  }
}