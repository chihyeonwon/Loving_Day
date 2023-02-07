import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100], // 핑크 배경색 적용
      body: SafeArea( // 시스템 UI 피해서 UI 그리기
        top: true,
        bottom:false,
        child:Column(
          // 위아래 끝에 위젯 배치
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          // 반대축 최대 크기로 늘리기
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:[
            _DDay(),
            _CoupleImage(),
          ]
        )
      )
    );
  }
}

class _DDay extends StatelessWidget {
  const _DDay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('DDay Widget');
  }
}

class _CoupleImage extends StatelessWidget {
  const _CoupleImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('Couple Image Widget');
  }
}