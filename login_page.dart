import 'auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:wearetrying/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? errorMessage = " ";
  bool isRememberMe = false;
  bool isLogin = true;
  bool _isSecurePassword = true;

  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

  Future<void> signInWithEmailAndPassword() async {
    try {
      await Auth().signInWithEmailAndPassword(
        email: _controllerEmail.text,
        password: _controllerPassword.text,
      );
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  Future<void> createUserWithEmailAndPassword() async {
    try {
      await Auth().createUserWithEmailAndPassword(
        email: _controllerEmail.text,
        password: _controllerPassword.text,
      );
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  Widget _title() {
    return const Text('FireBase Auth');
  }

  Widget _entryField(String title, TextEditingController controller) {
    return TextField(
      controller: controller,
      obscureText: title == 'PASSWORD' ? _isSecurePassword : false,
      decoration: InputDecoration(
        labelText: title,
        suffixIcon: title == 'PASSWORD'
            ? IconButton(
                icon: _isSecurePassword
                    ? Icon(Icons.visibility_off)
                    : Icon(Icons.visibility),
                onPressed: () {
                  setState(() {
                    _isSecurePassword = !_isSecurePassword;
                  });
                },
              )
            : null,
      ),
    );
  }

  Widget _errorMessage() {
    return Text(errorMessage == '' ? '' : 'Forget Password');
  }
  
  Widget _submitButton() {
    return ElevatedButton(
      onPressed: isLogin ? signInWithEmailAndPassword : createUserWithEmailAndPassword,
      child: Text(isLogin ? 'LOGIN' : 'REGISTER'),
      style: ElevatedButton.styleFrom(
        primary: Color.fromARGB(255, 58, 56, 56), 
      ),
    );
  }

  Widget _loginOrRegisterButton() {
    return TextButton(
      onPressed: () {
        setState(() {
          isLogin = !isLogin;
        });
      },
      child: Text(
        isLogin ? 'REGISTER' : 'LOGIN',
        style: TextStyle(
          color: Color.fromARGB(255, 58, 56, 56),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(255, 150, 136, 146),
                      Color.fromARGB(255, 150, 126, 136),
                      Color.fromARGB(255, 150, 116, 126),
                      Color.fromARGB(255, 150, 106, 116),
                    ],
                  ),
                ),
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 75, vertical: 225),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'COOKBOOK',
                        style: TextStyle(
                          color: Color.fromARGB(255, 58, 56, 56),
                          fontSize: 49,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      _entryField('E-MAIL', _controllerEmail),
                      _entryField('PASSWORD', _controllerPassword),
                      _errorMessage(),
                      _submitButton(),
                      _loginOrRegisterButton(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
