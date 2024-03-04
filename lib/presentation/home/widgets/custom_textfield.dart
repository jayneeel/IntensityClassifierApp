import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final controller;
  final Function(String value)? onChangeValue;


  const CustomTextField({
    super.key,
    required this.controller, this.onChangeValue,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(onChanged: onChangeValue,
      keyboardType: const TextInputType.numberWithOptions(decimal: false),
      controller: controller,
      maxLength: 3,
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
          ),
          enabledBorder:
              const OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          fillColor: Colors.grey.shade200,
          filled: true,
          hintText: "enter value"),
    );
  }
}
