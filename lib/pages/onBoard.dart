import 'package:auth_account/model/model_onboard.dart';
import 'package:auth_account/pages/login.dart';
import 'package:auth_account/theme/theme.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatefulWidget {
  static const routeName = '/onboardingPage';

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  late PageController _pageController ;
  late int _pageIndex ;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: 0) ;
    _pageIndex = 0;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose() ;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20 , right: 20 , bottom: 20),
              child: Align(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, FormLogin.routeName) ;
                  },
                  child: Text(
                    'Lewati',
                    style: detailOnBoard.copyWith(
                        color: primaryColor, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (index){
                  setState(() {
                    _pageIndex = index ;
                  });
                },
                itemCount: dataOnboarding.length,
                itemBuilder: (context, index) {
                  return BuildContentOnBoard(
                    imageUrl: dataOnboarding[index].imageUrl,
                    title: dataOnboarding[index].title,
                    detail:  dataOnboarding[index].detail,);
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ...List.generate(dataOnboarding.length, (index) => Padding(
              padding: EdgeInsets.only(right: 5),
              child: DotIndicator(
                isActive: index == _pageIndex ,
              ),
            )) ,
               const SizedBox(width: 100),
                _pageIndex != 2 ? GestureDetector(
                  onTap: (){
                    _pageController.nextPage(duration: Duration(microseconds: 500), curve: Curves.easeIn);
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 20, right: 20),
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50) ,
                      color: primaryColor
                    ),
                    child: Icon(Icons.arrow_forward, color: Colors.white,),
                  ),
                ) : GestureDetector(
                  onTap: (){
                      Navigator.pushReplacementNamed(context, FormLogin.routeName) ;
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 20, right: 20),
                    height: 60,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50) ,
                        color: primaryColor
                    ),
                    child: Center(child: Text('Get Started' , style: detailOnBoard.copyWith(color: Colors.white),)),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    Key? key,  this.isActive  = false ,
  }) : super(key: key);

  final bool isActive ;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6,
      width: isActive ? 15 : 6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: primaryColor
      ),
    );
  }
}

class BuildContentOnBoard extends StatelessWidget {
   final String imageUrl ;
   final String title  ;
   final String detail ;

  const BuildContentOnBoard({super.key,
   required this.imageUrl,
   required this.title,
   required this.detail});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(imageUrl,),
        const SizedBox(
          height: 50,
        ),
        Text(
          title,
          style: titleOnBoard,
        ),
        const SizedBox(
          height: 18,
        ),
        Text(
         detail,
          textAlign: TextAlign.center,
          style: detailOnBoard,
        ),
      ],
    );
  }
}
