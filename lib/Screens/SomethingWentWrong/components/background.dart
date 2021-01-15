import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';

class Background extends StatelessWidget {
  const Background({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          "assets/images/something_went_wrong.png",
          fit: BoxFit.cover,
        ),
        Positioned(
          bottom: size.height * 0.15,
          left: size.width * 0.3,
          right: size.width * 0.3,
          child: FlatButton(
            color: kPrimaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50)),
            onPressed: () {},
            child: Text(
              "Try Again".toUpperCase(),
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}