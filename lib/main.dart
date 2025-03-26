import 'package:flutter/material.dart';
import 'screens/login_page.dart';
void main() {
  runApp(const MyPage());
}
class MyPage extends StatelessWidget {
  const MyPage({super.key});
   
  @override
Widget build(BuildContext context){
return MaterialApp(
   debugShowCheckedModeBanner: false,
  home : LoginPage());
}
}
