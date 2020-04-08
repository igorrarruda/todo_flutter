import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final bool obscure;
  final TextInputType textInputType;
  final Function(String) onChanged;
  final bool enabled;
  final Widget prefix;
  final Widget suffix;

  CustomTextField(
      {Key key,
      this.controller,
      this.obscure = false,
      this.textInputType,
      this.onChanged,
      this.enabled,
      this.hint,
      this.prefix,
      this.suffix})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(32),
      ),
      padding: prefix != null ? null : const EdgeInsets.only(left: 16),
      child: TextField(
        controller: controller,
        obscureText: obscure,
        keyboardType: textInputType,
        onChanged: onChanged,
        enabled: enabled,
        decoration: InputDecoration(
          hintText: hint,
          border: InputBorder.none,
          prefixIcon: prefix,
          suffixIcon: suffix,
        ),
        textAlignVertical: TextAlignVertical.center,
      ),
    );
  }
}
