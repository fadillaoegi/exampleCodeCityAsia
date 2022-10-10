import 'package:auth_account/pages/beranda_screen.dart';
import 'package:auth_account/pages/schedule_screen.dart';
import 'package:auth_account/pages/list_food.dart';
import 'package:auth_account/pages/page_one.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  static const routeName = '/home-screen' ;


  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // buat sebuah param untuk bottom nav nya
  List<Map<String, dynamic>>? _pages ;
  int  _selectedPageIndex = 0 ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pages = [
      {
        'pages' : BerandaScreen() ,
      },
      {
        'pages' : ListRecipePage(),
      },
      {
        'pages' : ScheduleScreen(),
      },
      {
        'pages' : PageOne(),
      },

    ] ;
  }

  void selectedPage(int index){
    setState(() {
      _selectedPageIndex = index ;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages![_selectedPageIndex]['pages'],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
          onTap: selectedPage,
          backgroundColor: Colors.white,
          unselectedItemColor: Color(0xff686868),
          selectedItemColor: Color(0xff3E4041),
          currentIndex: _selectedPageIndex,
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icon_bottom_nav/home.svg'),
              activeIcon: SvgPicture.asset('assets/icon_bottom_nav/home_active.svg') ,
              label: 'Beranda',
            ),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icon_bottom_nav/storefront.svg'),
                activeIcon: SvgPicture.asset('assets/icon_bottom_nav/storefront_active.svg'),
              label: 'Pasar Modal',
            ),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icon_bottom_nav/calendar_month.svg'),
                activeIcon: SvgPicture.asset('assets/icon_bottom_nav/calendar_month_active.svg'),
              label: 'Agenda',
            ),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icon_bottom_nav/person.svg'),
                activeIcon: SvgPicture.asset('assets/icon_bottom_nav/person_active.svg'),
              label: 'Profile',
            ),
          ]
      ),
    );
  }
}
