import 'package:atbjobsapp/config/theme/app_text_style.dart';
import 'package:atbjobsapp/config/theme/colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyButton extends StatelessWidget {
  MyButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.isDisabled,
    this.disabledOnPressed
  });

  final String text;
  final VoidCallback onPressed;
  bool isDisabled;
  final VoidCallback? disabledOnPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          color: isDisabled == true ? borderColor : addColor,
          borderRadius: const BorderRadius.all(
              Radius.circular(10.0)
              ),
        ),
        child: Center(
          child: Text(
            text,
            style: AppTextStyle.hintTextStyle().copyWith(fontWeight: FontWeight.w500, color: isDisabled ? hintTextColor : whiteColor),
          ),
        ),
      ),
    );
  }
}
