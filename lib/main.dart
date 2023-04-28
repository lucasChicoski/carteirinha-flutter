import 'package:carteirinhaapp/setup_getit.dart';
import 'package:flutter/material.dart';
import 'Routers/routers.dart';

void main(List<String> args) async {
  setUpGetIt();
  runApp(const MainApp());
}

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
