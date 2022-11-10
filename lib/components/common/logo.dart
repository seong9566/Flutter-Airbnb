import 'package:flutter/material.dart';
import 'package:flutter_airbnb/constants.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/logo.png",
      width: 30,
      height: 30,
      color: kAccentColor,
    );
  }
}
