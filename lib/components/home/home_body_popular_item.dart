import 'package:flutter/material.dart';
import 'package:flutter_airbnb/size.dart';

class HomeBodyPopularItem extends StatelessWidget {
  // super 순서 - :super이 먼저 실행된다(부모가 먼저 실행됌) 이후에 내부 스택이 실행
  // {}중괄호 내부는 선택적 매개변수
  // 중괄호 외부는 무조건 받아야하는 매개변수
  // 중괄호 내부에 쓰면서 무조건 받아야하는 매개변수 - required 사용해주면된다.
  // 결론 - {} 내부에 쓰고 required를 넣어서 강제성 부여해주자.
  HomeBodyPopularItem({required this.id, Key? key}) : super(key: key);
  // const가 선언되어 있을때 만약 하나라도 변하는 값이 있다면 const를 없애주어야한다.
  final id;
  final popularList = {
    "p1.jpeg",
    "p2.jpeg",
    "p3.jpeg",
  };

  @override
  Widget build(BuildContext context) {
    // 전체가 1000이라면 popularItemWidth = 700/3-5
    double popularItemWidth = getBodyWidth(context) / 3 - 5; // -5는 살짝의 빈공간 주기

    return Container(
      color: Colors.green,
      height: 200,
      width: popularItemWidth,
      // 나중에 지웠다 추가해보기 - 테스트
      constraints: BoxConstraints(
        minWidth: 320, // 320보다 더 작은 화면은 없다 .(휴대폰)
      ),
      child: Column(
        children: [
          _buildPopularItemImage(),
          _buildPopularItemStar(),
          _buildPopularItemComment(),
          _buildPopularItemUserInfo(),
        ],
      ),
    );
  }

  Widget _buildPopularItemImage() {
    return SizedBox();
  }

  Widget _buildPopularItemStar() {
    return SizedBox();
  }

  Widget _buildPopularItemComment() {
    return SizedBox();
  }

  Widget _buildPopularItemUserInfo() {
    return SizedBox();
  }
}
