import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/login.dart';
import 'package:flutter_application_1/screen/register.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Register & Login with Firebase')),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('images/pic1.jpg'),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return LoginScreen();
                        }));
                      },
                      icon: Icon(Icons.login_rounded),
                      label: Text(
                        'Login',
                        style: TextStyle(fontSize: 20),
                      ))),
              SizedBox(height: 10),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return RegisterScreen();
                        }));
                      },
                      icon: Icon(Icons.login),
                      label: Text(
                        'register',
                        style: TextStyle(fontSize: 20),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
