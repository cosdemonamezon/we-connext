import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

Widget image_carousel (){
    return Container(
    height: 220.0,
    child: new Carousel(
      boxFit: BoxFit.cover,
      images:[
        AssetImage("assets/images/c1.jpg"),
        AssetImage("assets/images/c2.jpg"),
        AssetImage("assets/images/c3.jpg"),
        AssetImage("assets/images/c4.jpg"),
        AssetImage("assets/images/c5.jpg"),
        AssetImage("assets/images/c6.jpg"),
      ],
      
      autoplay: false,
      // animationCurve: Curves.fastOutSlowIn,
      // animationDuration: Duration(microseconds: 1000),
      dotSize: 4.0,
      //dotBgColor: Colors.red,
      dotColor: Colors.greenAccent,
      indicatorBgPadding: 8.0,
    ),
  );
} 


// Widget buildSwiper() {
//   List<String> imgs = [
//     'assets/images/c1.jpg',
//     'assets/images/c2.jpg',
//     'assets/images/c3.jpg',
//     'assets/images/c4.jpg',
//     'assets/images/c5.jpg',
//     'assets/images/c6.jpg',
//   ];

//   return Swiper(    
//     //outer: false,
//       itemBuilder: (context, i) {
//         return Image.asset(
//           imgs[i], 
//           fit: BoxFit.cover,
//         );
//       },
//       autoplay: false,
//       duration: 300,
      
//       pagination: new SwiperPagination(margin: new EdgeInsets.all(5.0)),
//       control: new SwiperControl(),
//       //viewportFraction: 0.7,
//       itemWidth: 300,
//       itemHeight: 500,
//       itemCount: imgs.length,
//   );
// }