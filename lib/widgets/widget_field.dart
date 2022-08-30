import 'package:flutter/material.dart';

class FieldWidget extends StatelessWidget {
  const FieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => debugPrint("tap tap tap"),
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 30.0,
        ),
        height: 56.6,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: const Color(0xffD9D9D9),
            borderRadius: BorderRadius.circular(
              20.0,
            )),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 10.0,
              ),
              child: const Text("Ubah Nama Panggilan"),
            ),
          ],
        ),
      ),
    );
  }
}
