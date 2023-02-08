# Loving Day

```
개발 툴 : Flutter
개발 언어 : Dart
개발 일시 : 2023-02-07 ~ 
개발자 : Won Chi Hyeon
```

## 앱 개요
```
기능 : 사용자가 직접 원하는 날짜를 선택할 수 있다.
       날짜 선택 시 실시간으로 화면의 D-Day 및 만난 날 업데이트
```

## 필요한 이미지, 폰트 추가하기
[이미지, 폰트 다운로드 사이트](https://github.com/codefactory-co/golden-rabbit-flutter-novice/tree/main/ch09/u_and_i/asset)
```
프로젝트에 필요한 이미지와 폰트를 다운로드하여 추가해줍니다.
pubspec.yaml을 다음과 같이 수정합니다.
```
![image](https://user-images.githubusercontent.com/58906858/217136886-e1c07ce1-6f09-429b-b29c-64b8f7264762.png)

## 홈 화면 위젯을 두 개로 나누고 배치하기
```
Home Screen 화면 위젯 ui를 _DDay와 _CoupleImage stless 클래스 위젯을 생성하여 두 개로 나누고
Column을 사용해서 두 개를 화면의 양 끝으로 배치하였습니다.
```
![image](https://user-images.githubusercontent.com/58906858/217138393-372493d0-7c23-4951-a0ea-a52260d886d9.png)

## 핑크색 배경을 적용하고 _CoupleImage 위젯에 커플 이미지를 추가하기
```
Scaffold의 backgrounㅇ에서 배경색을 핑크색으로 변경하고
_CoupleImage 위젯에 asset/img/middle_image.png 커플 이미지를 Image.asset을 사용하여 추가해주었습니다.
MediaQuery로 MaterialApp의 화면 전체의 반의 크기를 차지하도록 설정하였습니다.
```
![image](https://user-images.githubusercontent.com/58906858/217140807-3b3d4bbd-a4c6-4cf4-baf7-0afdd044b3d6.png)

### [핑크색 배경과 커플 이미지를 적용한 모습]
![image](https://user-images.githubusercontent.com/58906858/217141040-5db7418b-4330-4ece-bd50-4827dded6e0c.png)

## 상단 텍스트 추가
```
앱 상단에는 여러 Text 위젯과 하트 아이콘 위젯으로 이루어져 있습니다.

사귀기 시작한 날짜와 며칠이 지났는지 표시하는 글자는 날짜가 변경될 때마다 
자동으로 바뀌게 코딩해야 하지만 일단은 임의의 글자들을 넣어두었습니다.
```
![image](https://user-images.githubusercontent.com/58906858/217420055-4b96f0b4-ad36-413c-b3a1-19ff2b42ebc1.png)

## Theme을 사용하여 텍스트 스타일 지정하기
```
Text 위젯에 스타일을 Theme을 사용하여 지정할 수 있습니다.

fontFamily : 기본 글씨체를 지정
textTheme : Text 위젯 테마를 지정

headline1, bodyText1, bodyText2, headline2 임의의 스타일명을 지정해주고
각 스타일명에 따라 적용할 스타일을 지정해줍니다.

테마를 불러오고 각 Text위젯에 스타일을 적용해줍니다.
```
### [텍스트 테마 생성]
![image](https://user-images.githubusercontent.com/58906858/217424134-cced2716-507c-4a5a-a4dd-ef001fcbbc24.png)

### [텍스트 테마 적용 (일부)]
![image](https://user-images.githubusercontent.com/58906858/217424345-9e0ffaac-d32f-48e3-8271-0affbf378a7c.png)   
![image](https://user-images.githubusercontent.com/58906858/217424224-bba39329-7d2e-402f-9157-0b1f85ddb6c0.png)

### [테마를 적용한 후]
![image](https://user-images.githubusercontent.com/58906858/217423985-aec5380d-a555-49d6-8587-de738f6497d2.png)
