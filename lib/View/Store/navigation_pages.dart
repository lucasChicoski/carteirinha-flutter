import 'package:flutter/material.dart';

class NavigationPages extends ChangeNotifier {
  static navigationToPage(String value, BuildContext context) {
    Navigator.pushNamed(context, value);
  }
}
