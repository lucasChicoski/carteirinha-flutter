import 'package:flutter/material.dart';
import '../Config/config_colors.dart';

// ignore: must_be_immutable
class IconButtonC extends StatelessWidget {
  IconData icon;
  String? titleIcon;
  final VoidCallback onPressed;
  IconButtonC(
      {super.key, required this.icon, this.titleIcon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 100,
          height: 100,
          // color: Colors.amber,
          child: IconButton(
              alignment: Alignment.center,
              onPressed: onPressed,
              icon: Icon(
                icon,
                color: appBarRed,
                size: 80,
              )),
        ),
        Text(titleIcon ?? '')
      ],
    );
  }
}
