import 'package:auth_account/model/model_data.dart';
import 'package:auth_account/theme/theme.dart';
import 'package:auth_account/widgets/widget_home.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<String> imgUrl = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
];

class BerandaScreen extends StatelessWidget {
  BerandaScreen({Key? key}) : super(key: key);

  static const routeName = '/beranda-screen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(top: 15, right: 25),
                child: Icon(
                  Icons.notifications_outlined,
                  size: 32,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // for banner
            Container(
              child: CarouselSlider(
                  items: imgUrl
                      .map((item) => Container(
                            margin: const EdgeInsets.only(right: 15, left: 25),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                item,
                                fit: BoxFit.cover,
                                width: 300,
                                height: 100,
                              ),
                            ),
                          ))
                      .toList(),
                  options: CarouselOptions(
                    height: 100,
                    viewportFraction: 1,
                    disableCenter: true,
                    autoPlay: true,
                    autoPlayCurve: Curves.easeInOutBack,
                    autoPlayInterval: Duration(seconds: 5),
                  )),
            ),
            SizedBox(
              height: 25,
            ),
            ContentHome()
          ],
        ),
      ),
    ));
  }
}
