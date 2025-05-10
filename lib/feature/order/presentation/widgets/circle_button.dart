import 'package:atbjobsapp/config/theme/colors.dart';
import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final GestureTapCallback? onTap;
  final Icon icon;
  const CircleButton({super.key, required this.onTap, required this.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    onTap: onTap,
      child: Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(50),
      color: addColor
      ),
      child: icon
      ),
    );
  }
}
