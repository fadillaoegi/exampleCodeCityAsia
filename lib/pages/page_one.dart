import 'package:auth_account/widgets/widget_button.dart';
import 'package:auth_account/widgets/widget_field.dart';
import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({
    Key? key,
    this.data,
  }) : super(key: key);

  final Widget? data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      width: MediaQuery.of(context).size.width,
      color: const Color(0xff7F95CE),
      child: ListView(
        children: [
          Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20.0,
              ),
              data!,
              const SizedBox(
                height: 76.0,
              ),
              const FieldWidget(),
              const SizedBox(
                height: 20.0,
              ),
              const FieldWidget(),
              const SizedBox(
                height: 20.0,
              ),
              const FieldWidget(),
              const SizedBox(
                height: 40.0,
              ),
              ButtonDefault(
                height: 40.0,
                onPressed: (() {}),
                colorButton: Colors.redAccent,
                textButton: "Log out",
              )
              // Image.asset(
              //   'assets/computer.png',
              //   height: 203,
              //   width: 203,
              // ),
              // Text(
              //   "Success Login !!",
              //   style: TextStyle(
              //     fontWeight: FontWeight.bold,
              //     color: Colors.lightGreenAccent.shade400,
              //     fontSize: 40.0,
              //   ),
              // ),
            ],
          )),
        ],
      ),
    )));
  }
}
