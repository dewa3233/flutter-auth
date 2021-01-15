import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Error404/components/background.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      text: "Go Home",
    );
  }
}
