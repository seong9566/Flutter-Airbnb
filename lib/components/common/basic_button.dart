import 'package:flutter/material.dart';
import 'package:flutter_airbnb/styles.dart';

class BasicButton extends StatelessWidget {
  final text;
  BasicButton({required this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //width는 글자의 갯수만큼 증가 하도록 해준다.
      height: 35,
      child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              )),
          onPressed: () {},
          child: Text("$text", style: subtitle2())),
    );
  }
}
