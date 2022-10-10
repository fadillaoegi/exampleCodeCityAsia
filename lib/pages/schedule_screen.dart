import 'package:auth_account/theme/theme.dart';
import 'package:flutter/material.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({Key? key}) : super(key: key);
  static const routeName = '/chat-screen' ;


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body : Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/no_event.png'),
              Text('Agenda Kosong' , style: titleNoAgenda,),
              SizedBox(height: 6,) ,
              Text('Anda tidak memiliki agenda \napapun untuk saat ini.' , textAlign: TextAlign.center, style: businessPriceItemCard.copyWith(
                fontSize: 14
              ),),
            ]
        ),
      ),
    );
  }
}
