library sarj33t_login_btns;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Buttons {
  google,
  facebook,
  microsoft,
  linkedIn,
  twitter,
  gitHub,
  apple,
  email,
}

class SignInButton extends StatelessWidget {
  final Function onPressed;
  final Buttons button;
  final ShapeBorder? shape;
  final String? text;

  const SignInButton(this.button, {super.key, required this.onPressed, this.text, this.shape});

  @override
  Widget build(BuildContext context) {
    switch (button) {
      case Buttons.email:
        return Btn(
          key: const ValueKey("Email"),
          text: text ?? "Sign In With Email",
          icon: Icons.email,
          onPressed: onPressed,
          backgroundColor: Colors.white,
          textColor: Colors.black,
          iconColor: Colors.orangeAccent,
          shape: shape?? ButtonTheme.of(context).shape,
        );
      case Buttons.google:
        return Btn(
          key: const ValueKey("Google"),
          text: text ?? "Sign In With Google",
          image: Container(
            margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: const Image(
                image: AssetImage(
                  'assets/google_logo.png',
                  package: 'sarj33t_login_btns',
                ),
                height: 25.0,
                width: 20.0,
              ),
            ),
          ),
          onPressed: onPressed,
          backgroundColor: Colors.white,
          textColor: Colors.black,
          iconColor: Colors.blue,
          shape: shape?? ButtonTheme.of(context).shape,
        );
      case Buttons.facebook:
        return Btn(
          key: const ValueKey("Facebbok"),
          text: text ?? "Sign In With Facebook",
          icon:FontAwesomeIcons.facebookF,
          onPressed: onPressed,
          backgroundColor: const Color(0xFF3B5998),
          textColor: Colors.white,
          iconColor: Colors.white,
          shape: shape?? ButtonTheme.of(context).shape,
        );
      case Buttons.gitHub:
        return Btn(
          key: const ValueKey("Github"),
          text: text ?? "Sign In With Github",
          icon: FontAwesomeIcons.github,
          onPressed: onPressed,
          backgroundColor:  const Color(0xFF444444),
          textColor: Colors.white,
          iconColor: Colors.white,
          shape: shape?? ButtonTheme.of(context).shape,
        );
      case Buttons.apple:
        return Btn(
          key: const ValueKey("Apple"),
          text: text ?? "Sign In With Apple",
          icon: FontAwesomeIcons.apple,
          onPressed: onPressed,
          backgroundColor: Colors.white,
          textColor: Colors.black,
          iconColor: Colors.red,
          shape: shape?? ButtonTheme.of(context).shape,
        );
      case Buttons.linkedIn:
        return Btn(
          key: const ValueKey("LinkedIn"),
          text: text ?? "Sign In With LinkedIn",
          icon: FontAwesomeIcons.linkedin,
          onPressed: onPressed,
          backgroundColor:  const Color(0xFF007BB6),
          textColor: Colors.white,
          iconColor: Colors.white,
          shape: shape?? ButtonTheme.of(context).shape,
        );
      case Buttons.microsoft:
        return Btn(
          key: const ValueKey("Microsoft"),
          text: text ?? "Sign In With Microsoft",
          icon: FontAwesomeIcons.microsoft,
          onPressed: onPressed,
          backgroundColor: Colors.white,
          textColor: Colors.black,
          iconColor: Colors.blue,
          shape: shape?? ButtonTheme.of(context).shape,
        );
      case Buttons.twitter:
        return Btn(
          key: const ValueKey("Twitter"),
          text: text ?? "Sign In With Twitter",
          icon: FontAwesomeIcons.twitter,
          onPressed: onPressed,
          backgroundColor: const Color(0xFF1DA1F2),
          textColor: Colors.white,
          iconColor: Colors.white,
          shape: shape?? ButtonTheme.of(context).shape,
        );
    }
  }
}

class Btn extends StatelessWidget {
  final Color textColor, backgroundColor, iconColor;
  final Function? onPressed;
  final String text;
  final IconData? icon;
  final Widget? image;
  final ShapeBorder? shape;

  const Btn(
      {super.key,
        required this.backgroundColor,
        required this.onPressed,
        required this.text,
        this.icon,
        required this.textColor,
        required this.iconColor,
        this.image,
        this.shape});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      key: key,
      onPressed: (){
        if(onPressed != null){
          onPressed!.call();
        }
      },
      color: backgroundColor,
      shape: shape ?? ButtonTheme.of(context).shape,
      padding: const EdgeInsets.all(0),
      child: Container(
        constraints: const BoxConstraints(
          maxWidth: 220,
        ),
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 13,
                ),
                child: image?? Icon(
                  icon,
                  size: 20,
                  color: iconColor,
                ),
              ),
              Text(
                text,
                style: TextStyle(
                  fontFamily: 'Roboto',
                  color: textColor,
                  fontSize: 14,
                  backgroundColor: const Color.fromRGBO(0, 0, 0, 0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}