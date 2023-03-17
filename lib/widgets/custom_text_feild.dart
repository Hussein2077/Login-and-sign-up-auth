import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild(
      {Key? key,
      required this.suffixIcon,
      required this.hint,
   required   this.obscureText,
      required this.label, required this.controller})
      : super(key: key);
  final IconData suffixIcon;
  final String hint;
  final bool obscureText;
  final String label;
final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              spreadRadius: 7,
              color: Colors.grey.withOpacity(.2),
              offset: const Offset(1, 1),
            )
          ]),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            suffixIcon: Icon(
              suffixIcon,
              color: Colors.deepOrangeAccent,
            ),
            label: Text(label,
            style: const TextStyle(
              color: Colors.deepOrangeAccent
            ),
            ),
            hintText: hint,
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.white,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(30),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.white,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(30),
            )),
      ),
    );
  }
}
