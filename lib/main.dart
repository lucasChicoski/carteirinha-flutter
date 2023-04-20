import 'package:flutter/material.dart';
import 'Routers/routers.dart';

void main(List<String> args) {
  runApp(const MainApp());
}
//s
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: listRouters,
      initialRoute: '/home',
    );
  }
}
