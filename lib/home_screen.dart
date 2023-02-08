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

    // 테마 불러오기
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children:[
        const SizedBox(
          height:16.0,
        ),
        Text(
          'U&I',
          style:textTheme.headline1,
        ),
        const SizedBox(
          height:16.0,
        ),
        Text(
          '우리 처음 만난 날',
          style:textTheme.bodyText1,
        ),
        Text( // 임시로 지정한 만난 날짜
          '2021.11.23',
          style:textTheme.bodyText2,
        ),
        const SizedBox(
          height: 16.0,
        ),
        IconButton(
          iconSize:60.0,
          onPressed:(){},
          icon:Icon(
            Icons.favorite,
            color:Colors.red,
          ),
        ),
        const SizedBox(
          height:16.0,
        ),
        Text( // 만난 후 DDay
          'D+365',
        ),
      ],
    );
  }
}

class _CoupleImage extends StatelessWidget {
  const _CoupleImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child:
      Image.asset(
        'asset/img/middle_image.png',

        // 화면의 반만큼 높이 구현
        height: MediaQuery.of(context).size.height/2,
    )
    );
  }
}