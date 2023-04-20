import 'package:carteirinhaapp/View/Page/home_page.dart';
import 'package:carteirinhaapp/View/Page/id_identification.dart';
import 'package:flutter/material.dart';
import '../View/Page/configuration_page.dart';

Map<String, WidgetBuilder> listRouters = {
  '/home': (context) => const HomePage(),
  '/carteirinha': (context) => const IDIdentification(),
  '/configuration': (context) => const ConfigurationPage()
};
