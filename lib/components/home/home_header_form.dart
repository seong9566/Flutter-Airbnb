import 'package:flutter/material.dart';

class HomeHeaderForm extends StatelessWidget {
  const HomeHeaderForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //나중에 완성 하기
    return Align(
      alignment: Alignment(-0.6, 0),
      child: Container(
        //color: Colors.white  여기에 색깔을 주면 Decoration이 안먹음
        width: 420,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Form(
            child: Column(
          children: [
            _buildFormTitle(),
            _buildFormField(),
            _buildFormSubmit(),
          ],
        )),
      ),
    );
  }

  Widget _buildFormTitle() {
    return SizedBox();
  }

  Widget _buildFormField() {
    return SizedBox();
  }

  Widget _buildFormSubmit() {
    return SizedBox();
  }
}
