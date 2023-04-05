import 'package:flutter/material.dart';
 
class HitungTrapesium extends StatefulWidget {
  const HitungTrapesium({Key? key}) : super(key: key);
 
  @override
  State<HitungTrapesium> createState() => _TrapesiumState();
}
 
class _TrapesiumState extends State<HitungTrapesium> {
  final TextEditingController _s1Controller = TextEditingController();
  final TextEditingController _s2Controller = TextEditingController();
  final TextEditingController _s3Controller = TextEditingController();
  final TextEditingController _s4Controller = TextEditingController();
 final TextEditingController _aController = TextEditingController();
  final TextEditingController _bController = TextEditingController();
  final TextEditingController _tController = TextEditingController();
 
  double a = 0, b = 0, t = 0;
  double s1 = 0, s2 = 0, s3 = 0, s4 = 0;
  double keliling = 0, luas = 0;
 
  void hitungKeliling() {
    setState(() {
      s1 = double.parse(_s1Controller.text);
      s2 = double.parse(_s2Controller.text);
      keliling = s1 + s2 + s3 + s4;
    });
  }
 
  void hitungLuas() {
    setState(() {
      a = double.parse(_aController.text);
      b = double.parse(_bController.text);
      t = double.parse( _tController.text);
      luas = 0.5 * t * (a+b) ;
    });
  }
 
  void clearLuas() {
    setState(() {
      a = 0;
      b = 0;
      t = 0;
      luas = 0;
      _aController.clear();
      _bController.clear();
      _tController.clear();
    });
  }
 
  void clearKeliling() {
    setState(() {
      s1 = 0;
      s2 = 0;
      s3 = 0;
      s4 = 0;
      keliling = 0;
      _s1Controller.clear();
      _s2Controller.clear();
      _s3Controller.clear();
      _s4Controller.clear();
    });
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Hitung Layang-layang'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[_luasTrapesium(), _kelilingTrapesium()],
            ),
          ),
        ));
  }
 
  Widget _luasTrapesium() {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(children: [
        Text(
          'Luas Trapesium',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        TextField(
          decoration: InputDecoration(hintText: 'atap'),
          controller: _aController,
          keyboardType: TextInputType.number,
        ),
        TextField(
          decoration: InputDecoration(hintText: 'alas'),
          controller: _bController,
          keyboardType: TextInputType.number,
        ),
        TextField(
          decoration: InputDecoration(hintText: 'tinggi'),
          controller: _tController,
          keyboardType: TextInputType.number,
        ),
        SizedBox(height: 12.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              child: Text('Hitung Luas'),
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
        Text('Luas: $luas'),
      ]),
    );
  }
 
  Widget _kelilingTrapesium() {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 25, 10, 10),
      child: Column(children: [
        Text(
          'Keliling Trapesium',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        TextField(
          controller: _s1Controller,
          decoration: InputDecoration(hintText: 'Sisi 1'),
          keyboardType: TextInputType.number,
        ),
        TextField(
          controller: _s2Controller,
          decoration: InputDecoration(hintText: 'Sisi 2'),
          keyboardType: TextInputType.number,
        ),
        TextField(
          controller: _s3Controller,
          decoration: InputDecoration(hintText: 'Sisi 3'),
          keyboardType: TextInputType.number,
        ),
        TextField(
          controller: _s4Controller,
          decoration: InputDecoration(hintText: 'Sisi 4'),
          keyboardType: TextInputType.number,
        ),
        SizedBox(height: 16.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              child: Text('Hitung Keliling'),
              onPressed: hitungKeliling,
            ),
            ElevatedButton(
              child: Text('Clear', style: TextStyle(color: Colors.black)),
              onPressed: clearKeliling,
              style: ElevatedButton.styleFrom(
                primary: Colors.yellow, // Background color
              ),
            ),
          ],
        ),
        SizedBox(height: 16.0),
        Text('Keliling: $keliling'),
      ]),
    );
  }
}