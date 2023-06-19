import 'package:flutter/material.dart';
import 'package:sarj33t_login_btns/social_signin_buttons.dart';

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
      home: const MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

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
                /// Login with Google
              },
              shape: const RoundedRectangleBorder(),
            ),
            SignInButton(
              Buttons.facebook,
              onPressed: (){
                /// Login with Facebook
              },
              shape: const RoundedRectangleBorder(),
            ),
            SignInButton(
              Buttons.twitter,
              onPressed: (){
                /// Login with Facebook
              },
              shape: const RoundedRectangleBorder(),
            ),
            SignInButton(
              Buttons.apple,
              onPressed: (){
                /// Login with Facebook
              },
              shape: const RoundedRectangleBorder(),
            ),
            SignInButton(
              Buttons.microsoft,
              onPressed: (){
                /// Login with Facebook
              },
              shape: const RoundedRectangleBorder(),
            ),
            SignInButton(
              Buttons.gitHub,
              onPressed: (){
                /// Login with Facebook
              },
              shape: const RoundedRectangleBorder(),
            ),
            SignInButton(
              Buttons.linkedIn,
              onPressed: (){
                /// Login with Facebook
              },
              shape: const RoundedRectangleBorder(),
            ),
            SignInButton(
              Buttons.email,
              onPressed: (){
                /// Login with Facebook
              },
              shape: const RoundedRectangleBorder(),
            ),
          ],
        ),
      ),
    );
  }
}
