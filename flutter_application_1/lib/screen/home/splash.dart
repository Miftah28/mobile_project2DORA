import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/home/home.dart';
import 'package:flutter_application_1/screen/Auth/Login.dart';
import 'package:flutter_application_1/Widget/Widgets.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    _checkUser(false);
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: wAppLoading(),
    );
  }

  void _checkUser(bool user) async {
    await Future.delayed(Duration(seconds: 4));

    Navigator.pushReplacement(context,
    MaterialPageRoute(builder:((context) => user ? Home() : Login())));
  }
}
