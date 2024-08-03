import 'package:flutter/material.dart';

import '../../app/themes/app_colors.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
    required this.text,
    this.onPressed,
    this.color = mainColor,
  }) : super(key: key);

  final String text;
  final VoidCallback? onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(
          color: backgroundColor,
          fontSize: 18,
        ),
      ),
    );
  }
}
