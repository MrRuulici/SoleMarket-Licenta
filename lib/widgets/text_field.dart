import 'package:flutter/material.dart';

class BasicTextField extends StatelessWidget {
  final controller; //pentru datele din casute
  final String hintText; //self explanatory
  final bool obscureText; //pentru password

  const BasicTextField({
    super.key,
    this.controller,
    this.hintText = '',
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: TextField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade200),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400),
            ),
            fillColor: Colors.grey.shade200,
            filled: true,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey.shade400)
          ),
        ));
  }
}
