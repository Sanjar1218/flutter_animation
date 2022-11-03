import 'package:flutter/material.dart';
import 'package:flutter_animation/pages/login.dart';
import 'package:flutter_animation/pages/register.dart';
import 'package:flutter_animation/pages/todo_page.dart';

void main() {
  runApp(
     MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(username: '',password: '',),
    ),
  );
}

class LoginPage extends StatefulWidget {
  String username;
  String password;
  LoginPage({super.key,required this.password,required this.username});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              const SizedBox(height: 60),
              Container(
                child: Image.asset(
                  'img/image1.png',
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 60),
                child: Column(
                  children: [
                    const Text(
                      "Let's Get  Started ",
                      style: TextStyle(
                          fontSize: 54,
                          color: Colors.black,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700),
                    ),
                    Row(
                      children: const [
                        SizedBox(width: 20),
                        Text('enjoy together'),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 80),
              Container(
                width: 270,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignIn(
                                username: widget.username,
                                password: widget.password),
                          ));
                    });
                  },
                  child: Text(
                    'Join Us',
                    style: TextStyle(fontSize: 32),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF292929),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
