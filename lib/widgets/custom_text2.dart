import 'package:flutter/material.dart';


class CustomTextForm extends StatelessWidget {
  const CustomTextForm({
    Key? key,
    required this.label,
    required this.hint,
    required this.icon,
    required this.obscure,
    this.type,
    required this.controller,
    this.enable,
    this.onSubmit,
    this.onChange,
    this.onTap,
    this.validate,
  }) : super(key: key);
  final String label;
  final String hint;
  final Icon icon;
  final bool obscure;
  final TextInputType? type;
  final TextEditingController controller;
  final bool? enable;
  final Function(String)? onSubmit;
  final Function(String)? onChange;
  final Function()? onTap;
  final String? Function(String?)? validate;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      enabled: enable,
      onFieldSubmitted: onSubmit,
      onChanged: onChange,
      onTap: onTap,
      validator: validate,
      keyboardType: type,
      obscureText: obscure,
      decoration: InputDecoration(
          suffixIcon: icon,
          hintText: hint,
          label: Text(label),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: Colors.teal)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
          )),
    );
  }
}
