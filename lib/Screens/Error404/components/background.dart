import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/constants.dart';

class Background extends StatelessWidget {
  final String text;
  const Background({
    Key key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          "assets/images/404_error.png",
          fit: BoxFit.cover,
        ),
        Positioned(
          bottom: size.height * 0.15,
          left: size.width * 0.3,
          right: size.width * 0.3,
          child: FlatButton(
            color: kPrimaryColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
                  },
                ),
              );
            },
            child: Text(
              text.toUpperCase(),
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
