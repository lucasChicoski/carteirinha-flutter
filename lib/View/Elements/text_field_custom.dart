import 'package:flutter/material.dart';

class TextFieldCustom extends StatelessWidget {
  final String label;
  final String? hint;
  final Function(String)? onChange;
  const TextFieldCustom(
      {super.key, required this.label, this.onChange, this.hint});

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    return SizedBox(
      // width: width * 0.8,
      child: TextField(
        onChanged: onChange,
        decoration: InputDecoration(
          hintText: hint ?? '',
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
