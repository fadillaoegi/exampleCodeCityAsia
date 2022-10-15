import 'package:flutter/material.dart';
import '../model/model_data.dart';
import '../theme/theme.dart';

class ContentHome extends StatelessWidget {
  const ContentHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildTitle('Pendanaan Berlangsung'),
        Container(
          margin: const EdgeInsets.only(left: 25),
          height: 200,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: listItemCardPendanaan.length,
              itemBuilder: (context, index) {
                var item = listItemCardPendanaan[index];
                return Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                      right: 16,
                    ),
                    child: buildContent(
                        item.imgUrl,
                        item.title,
                        item.price,
                        item.percenBussines,
                        item.progressbar,
                        item.valueBussines));
              }),
        ),
        SizedBox(height: 30),
        buildTitle('Segera Dibuka'),
        Container(
          margin: const EdgeInsets.only(left: 25),
          height: 200,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: listItemCard.length,
              itemBuilder: (context, index) {
                var item = listItemCard[index];
                return Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                      right: 16,
                    ),
                    child: buildContent(
                        item.imgUrl, item.title, item.price, null, null, null));
              }),
        ),
        Card(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Colors.grey,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          color: Color(0xffF2F7FA),
          margin: const EdgeInsets.all(40),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
              height: 20,
            ),
            buildText("Berizin dan diawasi oleh:"),
            Container(
              width: 323,
              height: 120,
              child: Image.asset(
                "assets/ojk.png",
              ),
            ),
          ]),
        ),
      ],
    );
  }

  Widget buildTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: homeTitle,
          ),
          Text(
            'Lihat Semua',
            style: lihatSemua,
          )
        ],
      ),
    );
  }

  Widget buildText(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 110, right: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: ojkTitle,
          ),
        ],
      ),
    );
  }

  Widget buildContent(String imgUrl, String title, String price,
      String? percenBussines, bool? progresIndicator, double? valueBussines) {
    return Container(
      height: 200,
      width: 149,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        elevation: 2,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8), topRight: Radius.circular(8)),
              child: Image.network(
                imgUrl,
                height: 80,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            // detail dari item
            Expanded(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 9.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: titleItemCard),
                    SizedBox(height: 10),
                    progresIndicator == true
                        ? LinearProgressIndicator(
                            backgroundColor: const Color(0xffD9D9D9),
                            valueColor: const AlwaysStoppedAnimation<Color>(
                                Color(0xff398AB9)),
                            value: valueBussines,
                          )
                        : Container(),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Nilai Bisnis', style: businessPriceItemCard),
                          percenBussines != null
                              ? Text(
                                  percenBussines,
                                  style: businessPriceItemCard,
                                )
                              : Container()
                        ]),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      price,
                      style: priceItemCard,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
