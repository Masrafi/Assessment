import 'package:atbjobsapp/config/theme/app_text_style.dart';
import 'package:atbjobsapp/config/theme/colors.dart';
import 'package:atbjobsapp/core/utils/app_box_decoration.dart';
import 'package:flutter/material.dart';

class CustomStyledTextField extends StatelessWidget {
  final String label;
  final String suffixText;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;

  const CustomStyledTextField({
    super.key,
    required this.label,
    required this.suffixText,
    this.controller,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
      contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
        hintText: label,
        hintStyle: AppTextStyle.hintTextStyle(),
        filled: true,
        fillColor: whiteColor,
        enabledBorder: AppBoxDecoration.commonOutlineInputBorder,
        focusedBorder: AppBoxDecoration.commonOutlineInputBorder,
        suffixIcon: Container(
          padding: const EdgeInsets.only(right: 12),
          alignment: Alignment.centerRight,
          width: 40,
          child: Text(
            suffixText,
            style: AppTextStyle.textFieldOptionStyle(),
          ),
        ),
      ),
    );
  }
}
