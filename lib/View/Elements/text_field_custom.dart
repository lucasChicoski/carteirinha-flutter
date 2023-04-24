import 'package:flutter/material.dart';

class TextFieldCustom extends StatelessWidget {
  final String label;
  final Function(String)? onChange;
  const TextFieldCustom( 
      {super.key, required this.label,  this.onChange});

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    return SizedBox(
      // width: width * 0.8,
      child: TextField(
        onChanged: onChange,
        decoration: InputDecoration(
          label: Text(
            label,
          ),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ),
    );
  }
}
