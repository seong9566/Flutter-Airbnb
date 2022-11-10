import 'package:flutter/material.dart';
// 1. 페이지를 분리
// 2. 분리 시킨 페이지를 컴포넌트화
// 3. 페이지 내부에서 쓰는 것들을 메서드화
// 4. 다른 페이지에서 쓸 때 메서드를 빼서 컴포넌트화

//home만 쓰는 Banner Components
class HomeBodyBanner extends StatelessWidget {
  const HomeBodyBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      //나중에 패딩주기
      children: [
        _buildBannerImage(),
        _buildBannerCaption(),
      ],
    );
  }

  Widget _buildBannerImage() {
    // dart에서 _는 private와 똑같다 외부에서 접근 불가능
    return Container(
      height: 100,
      color: Colors.blue,
    );
  }

  Widget _buildBannerCaption() {
    return Container(
      height: 100,
      color: Colors.yellow,
    );
  }
}
