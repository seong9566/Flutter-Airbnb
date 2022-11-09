import 'package:flutter/material.dart';
import 'package:flutter_airbnb/size.dart';

class HomeHeaderAppBar extends StatelessWidget {
  const HomeHeaderAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(gap_m),
      child: Row(
        children: [
          _buildAppBarLogo(),
          Spacer(),
          _buildAppBarMenu(),
        ],
      ),
    );
  }

  // 함수는 클래스 외부에 ( 1급객체 )
  // 메서드는 클래스 내부에
  Widget _buildAppBarLogo() {
    return SizedBox();
  }

  Widget _buildAppBarMenu() {
    return SizedBox();
  }
}
