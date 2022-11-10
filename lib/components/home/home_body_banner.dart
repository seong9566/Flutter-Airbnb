import 'package:flutter/material.dart';
import 'package:flutter_airbnb/components/common/basic_button.dart';
import 'package:flutter_airbnb/size.dart';
import 'package:flutter_airbnb/styles.dart';
// 1. 페이지를 분리
// 2. 분리 시킨 페이지를 컴포넌트화
// 3. 페이지 내부에서 쓰는 것들을 메서드화
// 4. 다른 페이지에서 쓸 때 메서드를 빼서 컴포넌트화

//home만 쓰는 Banner Components
class HomeBodyBanner extends StatelessWidget {
  const HomeBodyBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: gap_m),
      child: Stack(
        children: [
          _buildBannerImage(),
          _buildBannerCaption(),
        ],
      ),
    );
  }

  Widget _buildBannerImage() {
    // dart에서 _는 private와 똑같다 외부에서 접근 불가능
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(
        "assets/banner.jpg",
        fit: BoxFit.cover,
        width: double.infinity,
        height: 320,
      ),
    );
  }

  Widget _buildBannerCaption() {
    return Positioned(
      top: 40,
      left: 40,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, //왼쪽 정렬
        children: [
          Container(
            constraints: BoxConstraints(
              //최소값 최대값 제약조건을 위해선 constraints를 준다
              maxWidth: 250,
            ),
            child: Text(
              "이제 여행은 가까운 곳에서",
              style: h4(mColor: Colors.white),
            ),
          ),
          SizedBox(height: gap_m),
          Container(
            constraints: BoxConstraints(
              maxWidth: 250,
            ),
            child: Text("새로운 공간에 머물러 보세요. 살이보기, 출장,여행 등 다양한 목적에 맞는 숙소를 찾아보세요",
                style: subtitle1(mColor: Colors.white)),
          ),
          SizedBox(height: gap_m),
          SizedBox(
            width: 170,
            child: BasicButton(text: "가까운 여행지 둘러보기"),
          )
        ],
      ),
    );
  }
}
