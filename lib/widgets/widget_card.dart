import 'package:flutter/material.dart';

class CardDefault extends StatelessWidget {
  final String? name;
  final String? subName;
  final double? height;
  final double? widht;
  final Color? color;
  const CardDefault({
    Key? key,
    this.name,
    this.subName,
    this.color,
    required this.height,
    required this.widht,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height!,
      width: widht!,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: const Text("data"),
          )
        ],
      ),
    );
  }
}
