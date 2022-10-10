import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Item{
  final String title ;
  final String price ;
  final String imgUrl ;
  String? percenBussines;
  bool? progressbar ;
  double? valueBussines;

  Item({required this.title, required this.price, required this.imgUrl, this.percenBussines, this.progressbar, this.valueBussines});
}

final listItemCard = [
   Item(
      title: 'ABC Coffe',
     price: 'Rp 25.000.000',
     imgUrl: 'https://images.unsplash.com/photo-1588483977150-9c2127ab7bcc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
   ),
   Item(
      title: 'XYZ Closing Store',
     price: 'Rp 30.000.000',
     imgUrl: 'https://images.unsplash.com/photo-1567401893414-76b7b1e5a7a5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
   ),
   Item(
      title: 'Garuda restaurant',
     price: 'Rp 40.000.000',
     imgUrl: 'https://plus.unsplash.com/premium_photo-1658506988095-885269f2b56e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80',
   ),
   Item(
      title:'Citra Florist' ,
     price: 'Rp 35.000.000',
     imgUrl: 'https://images.unsplash.com/photo-1487070183336-b863922373d4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
   ),
   Item(
      title: 'Bakery Shop',
     price: 'Rp 27.000.000',
     imgUrl: 'https://images.unsplash.com/photo-1517433670267-08bbd4be890f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1080&q=80',
   ),
] ;

final listItemCardPendanaan = [
  //   with persen bussines
  Item(
      title: 'ABC Coffe',
      price: 'Rp 25.000.000',
      imgUrl: 'https://images.unsplash.com/photo-1588483977150-9c2127ab7bcc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
      percenBussines: '50 %',
    progressbar: true,
    valueBussines: 0.5 ,

  ),
  Item(
      title: 'XYZ Closing Store',
      price: 'Rp 30.000.000',
      imgUrl: 'https://images.unsplash.com/photo-1567401893414-76b7b1e5a7a5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
      percenBussines: '20 %',
    progressbar: true,
    valueBussines: 0.2,
  ),
  Item(
    title: 'Garuda restaurant',
    price: 'Rp 40.000.000',
    percenBussines: '45 %',
    progressbar: true,
    valueBussines: 0.4,
    imgUrl: 'https://plus.unsplash.com/premium_photo-1658506988095-885269f2b56e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80',
  ),
  Item(
    title:'Citra Florist' ,
    price: 'Rp 35.000.000',
    percenBussines: '30 %',
    progressbar: true,
    valueBussines: 0.7,
    imgUrl: 'https://images.unsplash.com/photo-1487070183336-b863922373d4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
  ),
  Item(
    title: 'Bakery Shop',
    price: 'Rp 27.000.000',
    percenBussines: '20 %',
    progressbar: true,
    valueBussines: 0.4,
    imgUrl: 'https://images.unsplash.com/photo-1517433670267-08bbd4be890f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1080&q=80',
  ),


] ;