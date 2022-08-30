import 'package:flutter/material.dart';

class ButtonDefault extends StatelessWidget {
  const ButtonDefault({
    Key? key,
    this.colorButton,
    this.height,
    this.textButton,
    this.onPressed,
    this.width,
  }) : super(key: key);
  final Color? colorButton;
  final String? textButton;
  final VoidCallback? onPressed;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height!,
      width: 212,
      decoration: BoxDecoration(
        color: colorButton!,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Center(
          child: TextButton(
              onPressed: onPressed!,
              child: Text(
                textButton!,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ))),
    );
  }
}
