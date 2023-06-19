import 'package:flutter/material.dart';
import 'package:sarj33t_login_btns/sarj33t_login_btns.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginPage(title: 'Login'),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});
  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SignInButton(
              Buttons.google,
              onPressed: (){
                debugPrint("Login with Google");
              },
            ),
            SignInButton(
              Buttons.facebook,
              onPressed: (){
                debugPrint("Login with Facebook");
              }
            ),
            SignInButton(
              Buttons.twitter,
              onPressed: (){
                debugPrint("Login with Twitter");
              }
            ),
            SignInButton(
              Buttons.apple,
              onPressed: (){
                debugPrint("Login with Apple");
              }
            ),
            SignInButton(
              Buttons.microsoft,
              onPressed: (){
                debugPrint("Login with Microsoft");
              }
            ),
            SignInButton(
              Buttons.gitHub,
              onPressed: (){
                debugPrint("Login with GitHub");
              }
            ),
            SignInButton(
              Buttons.linkedIn,
              onPressed: (){
                debugPrint("Login with LinkedIn");
              }
            ),
            SignInButton(
              Buttons.email,
              onPressed: (){
                debugPrint("Login with Email");
              }
            ),
          ],
        ),
      ),
    );
  }
}
