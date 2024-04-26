import 'package:flutter/material.dart';

class CustomAddAndEditTextField extends StatelessWidget {
  const CustomAddAndEditTextField({
    super.key,
    required this.text,
    this.maxLines = 1,
  });
  final String text;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      cursorColor: Colors.grey,
      decoration: InputDecoration(
        hintText: text,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.grey),
        ),
      ),
    );
  }
}
