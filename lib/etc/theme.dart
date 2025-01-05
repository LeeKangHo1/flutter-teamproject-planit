import 'package:flutter/material.dart';

// // 2
// TextTheme textTheme() {
//   return TextTheme(
//     displayLarge: GoogleFonts.openSans(fontSize: 18.0, color: Colors.black),
//     displayMedium: GoogleFonts.openSans(fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.bold),
//     bodyLarge: GoogleFonts.openSans(fontSize: 16.0, color: Colors.black),
//     bodyMedium: GoogleFonts.openSans(fontSize: 14.0, color: Colors.grey),
//     titleMedium: GoogleFonts.openSans(fontSize: 15.0, color: Colors.black),
//   );
// }
//
// // 3
// IconThemeData iconTheme() {
//   return const IconThemeData(
//     color: Colors.black,
//   );
// }
//
// // 4
// AppBarTheme appBarTheme() {
//   return AppBarTheme(
//     centerTitle: false,
//     color: Colors.white,
//     elevation: 0.0,
//     iconTheme: iconTheme(),
//     titleTextStyle: GoogleFonts.nanumGothic(
//       fontSize: 16,
//       fontWeight: FontWeight.bold,
//       color: Colors.black,
//     ),
//   );
// }
//
// // 5
// BottomNavigationBarThemeData bottomNavigatorTheme() {
//   return const BottomNavigationBarThemeData(
//     selectedItemColor: Colors.orange,
//     unselectedItemColor: Colors.black54,
//     showUnselectedLabels: true,
//   );
// }
//
// 6
ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        // label 안 보이게 설정
        // showSelectedLabels: false,
        // showUnselectedLabels: false,

        // 적용 x, 재실행 해봐도 x -> 이유 찾아 보기 -> type 설정이 필요
        // backgroundColor: Colors.white,

        // 애니메이션 삭제
        // type: BottomNavigationBarType.fixed,

        // 아이콘 색 설정
        // selectedItemColor: Colors.blue,
        // unselectedItemColor: Colors.black54,
        ),
    primarySwatch: Colors.blue, // primarySwatch -> 앱의 대표 컬러
  );
}
