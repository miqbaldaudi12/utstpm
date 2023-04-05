import 'package:flutter/material.dart';
 
class HitungTabung extends StatefulWidget {
  const HitungTabung({Key? key}) : super(key: key);
 
  @override
  State<HitungTabung> createState() => _TabungState();
}
 
class _TabungState extends State<HitungTabung> {
  final TextEditingController _rController = TextEditingController();
  final TextEditingController _tController = TextEditingController();


 
  double r = 0, t = 0;
  double luaspermukaan = 0, volume = 0;
 
  void hitungLuasPermukaan() {
    setState(() {
      r = double.parse(_rController.text);
      t = double.parse(_tController.text);
      if (r%7==0) {
        luaspermukaan=(2*(22/7*r*r))+2*22/7*r*t;
      }else{
        luaspermukaan=(2*(3.14*r*r))+2*3.14*r*t;
      }
    });
  }
 
  void hitungLuas() {
    setState(() {
      r = double.parse(_rController.text);
      t = double.parse(_tController.text);
      if (r%7==0) {
        volume = 22/7*r*r*t;
      }else{
        volume = 3.14*r*r*t;
      }
      
    });
  }
 
  void clearLuas() {
    setState(() {
      r = 0;
      t = 0;
      volume = 0;
      _rController.clear();
      _tController.clear();
    });
  }
 
  void clearLuasPermukaan() {
    setState(() {
      r = 0;
      t = 0;
      luaspermukaan = 0;
      _rController.clear();
      _tController.clear();
    });
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Hitung Tabung'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[_luasTabung(), _LuasPermukaanTabung()],
            ),
          ),
        ));
  }
 
  Widget _luasTabung() {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(children: [
        Text(
          'Luas Tabung',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        TextField(
          decoration: InputDecoration(hintText: 'Jari-jari'),
          controller: _rController,
          keyboardType: TextInputType.number,
        ),
        TextField(
          decoration: InputDecoration(hintText: 'Tinggi Tabung'),
          controller: _tController,
          keyboardType: TextInputType.number,
        ),
        SizedBox(height: 12.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              child: Text('Hitung Volume'),
              onPressed: hitungLuas,
            ),
            ElevatedButton(
              child: Text('Clear', style: TextStyle(color: Colors.black)),
              onPressed: clearLuas,
              style: ElevatedButton.styleFrom(
                primary: Colors.yellow, // Background color
              ),
            ),
          ],
        ),
        SizedBox(height: 12.0),
        Text('Volume: $volume'),
      ]),
    );
  }
 
  Widget _LuasPermukaanTabung() {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 25, 10, 10),
      child: Column(children: [
        Text(
          'LuasPermukaan Tabung',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        TextField(
          controller: _rController,
          decoration: InputDecoration(hintText: 'Jari-jari'),
          keyboardType: TextInputType.number,
        ),
        TextField(
          controller: _tController,
          decoration: InputDecoration(hintText: 'Tinggi tabung'),
          keyboardType: TextInputType.number,
        ),
        SizedBox(height: 16.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              child: Text('Hitung Luas Permukaan'),
              onPressed: hitungLuasPermukaan,
            ),
            ElevatedButton(
              child: Text('Clear', style: TextStyle(color: Colors.black)),
              onPressed: clearLuasPermukaan,
              style: ElevatedButton.styleFrom(
                primary: Colors.yellow, // Background color
              ),
            ),
          ],
        ),
        SizedBox(height: 16.0),
        Text('Luas Permukaan: $luaspermukaan'),
      ]),
    );
  }
}