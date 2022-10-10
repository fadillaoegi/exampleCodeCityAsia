import 'package:auth_account/pages/beranda_screen.dart';
import 'package:auth_account/pages/schedule_screen.dart';
import 'package:auth_account/pages/home.dart';
import 'package:auth_account/pages/list_food.dart';
import 'package:auth_account/pages/login.dart';
import 'package:auth_account/pages/onBoard.dart';
import 'package:auth_account/pages/page_one.dart';
import 'package:auth_account/pages/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await getIntroduction();
  runApp(const MainApp());
}

// this code for sharedPreferences
int introduction = 0;
Future getIntroduction() async {
  final prefs = await SharedPreferences.getInstance();

  int? intro = prefs.getInt('introduction');
  print('introduction : $intro');
  if (intro != null && intro == 1) {
    return introduction = 1;
  }

  prefs.setInt('introduction', 1);
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //
      initialRoute: OnBoardingPage.routeName,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        OnBoardingPage.routeName: (context) => OnBoardingPage(),
        FormLogin.routeName: (context) => const FormLogin(),
        ListRecipePage.routename: (context) => const ListRecipePage(),
        FormLogin.routeName: (context) => const FormLogin(),
        ListRecipePage.routename: (context) => ListRecipePage(),
        PageOne.routeName: (context) => const PageOne(),
        ScheduleScreen.routeName: (context) => ScheduleScreen(),
        BerandaScreen.routeName: (context) => BerandaScreen(),
        Home.routeName: (context) => const Home(),
      },
    );
  }
}
