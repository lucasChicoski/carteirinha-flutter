import 'package:flutter/material.dart';

class ElevatedButtonCustom extends StatelessWidget {
  final String? label;
  final VoidCallback onPress;
  const ElevatedButtonCustom({super.key, this.label, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: onPress,
        child: Text(label ?? ''),
        style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 150, 0, 0),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
      ),
    );
  }
}
