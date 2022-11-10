import 'package:flutter/material.dart';
import 'package:flutter_airbnb/constants.dart';
import 'package:flutter_airbnb/size.dart';
import 'package:flutter_airbnb/styles.dart';

class HomeBodyPopularItem extends StatelessWidget {
  // super 순서 - :super이 먼저 실행된다(부모가 먼저 실행됌) 이후에 내부 스택이 실행
  // {}중괄호 내부는 선택적 매개변수
  // 중괄호 외부는 무조건 받아야하는 매개변수
  // 중괄호 내부에 쓰면서 무조건 받아야하는 매개변수 - required 사용해주면된다.
  // 결론 - {} 내부에 쓰고 required를 넣어서 강제성 부여해주자.
  HomeBodyPopularItem({required this.id, Key? key}) : super(key: key);
  // const가 선언되어 있을때 만약 하나라도 변하는 값이 있다면 const를 없애주어야한다.
  final id;
  final popularList = [
    "p1.jpeg",
    "p2.jpeg",
    "p3.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    // 전체가 1000이라면 popularItemWidth = 700/3-5
    double popularItemWidth = getBodyWidth(context) / 3 - 5; // -5는 살짝의 빈공간 주기

    return Padding(
      padding: const EdgeInsets.only(bottom: gap_l),
      child: Container(
        // 나중에 지웠다 추가해보기 - 테스트
        constraints: BoxConstraints(
          minWidth: 320, // 320보다 더 작은 화면은 없다 .(휴대폰)
        ),
        child: SizedBox(
          width: popularItemWidth,
          child: Column(
            children: [
              _buildPopularItemImage(),
              _buildPopularItemStar(),
              _buildPopularItemComment(),
              _buildPopularItemUserInfo(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPopularItemImage() {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset("assets/${popularList[id]}", fit: BoxFit.cover),
        ),
        SizedBox(height: gap_s)
      ],
    );
  }

  Widget _buildPopularItemStar() {
    return Column(
      children: [
        Row(
          children: [
            Icon(Icons.star, color: kAccentColor),
            Icon(Icons.star, color: kAccentColor),
            Icon(Icons.star, color: kAccentColor),
            Icon(Icons.star, color: kAccentColor),
            Icon(Icons.star, color: kAccentColor),
            Icon(Icons.star, color: kAccentColor),
          ],
        ),
        SizedBox(height: gap_s),
      ],
    );
  }

  Widget _buildPopularItemComment() {
    return Column(
      children: [
        Text(
          "깔끔하고 다 갖춰져있어서 좋았어요:) 위치도 완전 좋아용 다들 여기 살고싶다구 ㅋㅋ 화장실도 3개에요!! 5명이서 씻는것도 전혀 불편함 없이 좋았어요 ^^ 포근한 이불도 좋습니당 ㅎㅎ",
          style: body1(),
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(height: gap_s),
      ],
    );
  }

  Widget _buildPopularItemUserInfo() {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage("assets/p1.jpeg"),
        ),
        SizedBox(width: gap_s),
        Column(
          children: [
            Text(
              "현성",
              style: subtitle1(),
            ),
            Text("한국"),
          ],
        )
      ],
    );
  }
}
