import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime firstDay = DateTime.now();

  void onHeartPressed() {
    // 상태 변경 시 setState() 함수 실행
    setState((){
      // firstDay 변수에서 하루 빼기
      firstDay = firstDay.subtract(Duration(days:1));
    });
  }

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
            _DDay(
              // 하트 눌렀을 때 실행할 함수 전달하기
              onHeartPressed: onHeartPressed,
              firstDay: firstDay,
            ),
            _CoupleImage(),
          ]
        )
      )
    );
  }
}



class _DDay extends StatelessWidget {
  // 하트 눌렀을 때 실행할 함수
  final GestureTapCallback onHeartPressed;
  // 사귀기 시작한 날
  final DateTime firstDay;
  
  _DDay({
    required this.onHeartPressed, // 상위에서 함수 입력받기
    required this.firstDay, // 날짜 변수로 입력받기
  });

  @override
  Widget build(BuildContext context) {

    // 테마 불러오기
    final textTheme = Theme.of(context).textTheme;

    // 현재 날짜 시간
    final now = DateTime.now();

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
          '${firstDay.year}.${firstDay.month}.${firstDay.day}',
          style:textTheme.bodyText2,
        ),
        const SizedBox(
          height: 16.0,
        ),
        IconButton(
          iconSize:60.0,
          onPressed:onHeartPressed,
          icon:Icon(
            Icons.favorite,
            color:Colors.red,
          ),
        ),
        const SizedBox(
          height:16.0,
        ),
        Text( // 만난 후 DDay
          // DDay 계산하기
          'D+${DateTime(now.year, now.month, now.day).difference(firstDay).inDays + 1}',
          style:textTheme.headline2,
        ),
      ],
    );
  }
}

class _CoupleImage extends StatelessWidget {
  const _CoupleImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child:
        Image.asset(
          'asset/img/middle_image.png',

          // 화면의 반만큼 높이 구현
          height: MediaQuery.of(context).size.height/2,
      )
      ),
    );
  }
}