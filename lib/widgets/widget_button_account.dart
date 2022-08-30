import 'package:flutter/material.dart';

class ButtonAccount extends StatelessWidget {
  const ButtonAccount({
    Key? key,
    // this.height,
    // this.width,
    required this.name,
    required this.imageUrl,
    this.onPreesed,
  }) : super(key: key);
  final String? name;
  // final double? width;
  // final double? height;
  final String? imageUrl;
  final VoidCallback? onPreesed;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        width: 286,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.0),
          color: Colors.white,
        ),
        child: TextButton(
          onPressed: onPreesed!,
          child: Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                imageUrl!,
                height: 18.0,
                width: 18.0,
              ),
              const SizedBox(
                width: 6.0,
              ),
              Text(
                name!,
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
              )
            ],
          )),
        ));
  }
}
