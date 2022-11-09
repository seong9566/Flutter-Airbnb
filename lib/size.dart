import 'package:flutter/material.dart';

const double gal_xl = 40;
const double gap_l = 30;
const double gap_m = 20;
const double gap_s = 10;
const double gap_xs = 5;

//헤더 높이
const double header_height = 620;

//MediaQuery
double getBodyWidth(BuildContext context) {
  //Build는 main.dart 에서 BuildContext
  //와 똑같다 여기엔 내부 요소들을 모두 알고있다.
  // 미디어 쿼리는 화면의 크기를 알 수 있다. context를 받아야 한다.
  return MediaQuery.of(context).size.width * 0.7;
}
