import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class GalleryScreen extends StatefulWidget {
  GalleryScreen({Key key}) : super(key: key);

  @override
  _GalleryScreenState createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  var gallery = [
    "https://www.gamingdose.com/wp-content/uploads/2021/02/genshin-impact-hu-tao.jpg",
    "https://images4.alphacoders.com/113/1135230.png",
    "https://images4.alphacoders.com/113/1132519.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Center(
          child: Swiper(
            autoplay: true,
            itemBuilder: (BuildContext context, int index) {
              return new Image.network(
                gallery[index],
                fit: BoxFit.contain,
              );
            },
            itemCount: gallery.length,
            pagination: new SwiperPagination(),
            control: new SwiperControl(),
          ),
        ),
      ),
    );
  }
}
