import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hint;
  final IconData prefixicon;
  final IconData? suffixicon;
  const CustomTextFormField({
    super.key,
    required this.hint,
    required this.prefixicon,
    this.suffixicon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        constraints: const BoxConstraints(maxHeight: 55, maxWidth: 310),
        hintText: hint,
        hintStyle: const TextStyle(fontFamily: "regular"),
        prefixIcon: Icon(prefixicon),
        suffixIcon: Icon(suffixicon),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: Colors.grey),
        ),
      ),
    );
  }
}
