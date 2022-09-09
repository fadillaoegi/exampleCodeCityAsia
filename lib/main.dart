import 'package:auth_account/pages/login.dart';
import 'package:auth_account/pages/onBoard.dart';
import 'package:auth_account/pages/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main()  async{
  WidgetsFlutterBinding.ensureInitialized() ;
  await getIntroduction() ;
  runApp(const MainApp());
}

// this code for sharedPreferences
 int introduction = 0 ;
 Future getIntroduction()  async{
  final prefs =  await SharedPreferences.getInstance() ;

  int? intro = prefs.getInt('introduction') ;
  print('introduction : $intro') ;
  if (intro != null && intro == 1){
    return introduction = 1; 
  }
  
  prefs.setInt('introduction', 1) ;

 }


class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      //
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName : (context) => SplashScreen() ,
        OnBoardingPage.routeName : (context) => OnBoardingPage(),
        FormLogin.routeName : (context) => FormLogin()
      },
    );
  }
}
