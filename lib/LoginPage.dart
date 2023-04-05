import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'ProfilePage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _username = TextEditingController();
  var _password = TextEditingController();

  void _checkLogin() {
    if (_username.text == '123200076' &&
        _password.text == 'miqbaldaudi21') {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Wrong Username/Password')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                child: Text(
              'Login',
              style: TextStyle(fontSize: 24),
            )),
            SizedBox(height: 20),
            SizedBox(
              width: MediaQuery.of(context).size.width * 2 / 5,
              child: TextField(
                controller: _username,
                decoration: const InputDecoration(
                  labelText: "Username",
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: MediaQuery.of(context).size.width * 2 / 5,
              child: TextField(
                obscureText: true,
                controller: _password,
                decoration: const InputDecoration(
                  labelText: "Password",
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: _checkLogin, child: Text('Login')),
          ],
        ),
      ),
    );
  }
}