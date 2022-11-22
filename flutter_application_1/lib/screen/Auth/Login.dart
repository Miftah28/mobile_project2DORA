import 'dart:ffi';

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Widget _AuthTitle() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(bottom: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Dora',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text('Enter Your Email & Password,'),
        ],
      ),
    );
  }

  Widget _InputEmail() {
    return Container(
      child: TextField(
        decoration: InputDecoration(hintText: 'Email'),
      ),
    );
  }

  Widget _inputPassword() {
    return Stack(
      children: <Widget>[
        Container(
          child: TextField(
            decoration: InputDecoration(hintText: 'Password'),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: IconButton(
            icon: Icon(Icons.visibility),
            onPressed: () {},
          ),
        )
      ],
    );
  }

  Widget _ForgotPassword() {
    return GestureDetector(
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          color: Colors.transparent,
          padding: EdgeInsets.fromLTRB(0, 15, 15, 15),
          child: Text('Forgot Password ?'),
        ),
      ),
      onTap: () {
        print('Forgot Password ?');
      },
    );
  }

  Widget _inputSubmit() {
    return Container(
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 250, 6, 6),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Text('Login',
            style: TextStyle(
              color: Color(0xffffffff),
            )),
        onPressed: () {},
      ),
    );
  }

  Widget _TextDivider() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: <Widget>[
          Expanded(child: Divider()),
          Padding(
            padding: const EdgeInsets.all(08.0),
            child: Text('Or Connect With',
                style: TextStyle(fontSize: 12, color: Colors.grey)),
          ),
          Expanded(child: Divider()),
        ],
      ),
    );
  }

  Widget _GoogleSignIn() {
    return Container(
      width: double.infinity,
      child: ElevatedButton.icon(
        //child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 185, 182, 182),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        icon: Icon(Icons.adb),
        label: Text('Google',
        style: TextStyle(
              color: Color.fromARGB(255, 28, 27, 27),
            )),
        onPressed: () {},
      ),
    );
  }

Widget _TextRegister(){
  return Container(
    margin: EdgeInsets.only(top: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Dont Have an Account yet ? '),
        GestureDetector(
          child: Container(
            padding: EdgeInsets.all(10),
            color: Colors.transparent,
            child: Text('Register',style: TextStyle(fontWeight: FontWeight.bold),),
          ),
          onTap: () { print('Register');},
        )
      ],
    ),
  );
}
  @override
  Widget build(BuildContext context) {
      return GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },

      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _AuthTitle(),
              _InputEmail(),
              _inputPassword(),
              _ForgotPassword(),
              _inputSubmit(),
              _TextDivider(),
              _GoogleSignIn(),
              _TextRegister(),
            ],
          ),
        ),
      ),
    );
  }
}
