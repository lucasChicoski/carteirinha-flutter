import 'package:carteirinhaapp/View/Components/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../Config/config_colors.dart';

class ConfigurationPage extends StatelessWidget {
  const ConfigurationPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.95;
    double height = MediaQuery.of(context).size.height * 0.85;
    return Scaffold(
      appBar: appBar(false, 'Configurações'),
      body: Center(
        child: Container(
          
          width: width,
          height: height,
          color: fontColor,
        ),
      ),
    );
  }
}
