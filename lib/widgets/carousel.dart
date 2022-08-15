import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<String> imgList = [
  'https://firebasestorage.googleapis.com/v0/b/revirt-42522.appspot.com/o/app%2FWhatsApp%20Image%202022-08-15%20at%209.28.34%20PM.jpeg?alt=media&token=13b6da02-e032-46fd-a29a-d1a7dbd04cd7',
  'https://firebasestorage.googleapis.com/v0/b/revirt-42522.appspot.com/o/app%2FWhatsApp%20Image%202022-08-15%20at%209.28.35%20PM%20(1).jpeg?alt=media&token=44d66421-aebf-446c-90da-004045660ea8',
  'https://firebasestorage.googleapis.com/v0/b/revirt-42522.appspot.com/o/app%2FWhatsApp%20Image%202022-08-15%20at%209.28.35%20PM.jpeg?alt=media&token=18adb7a3-e2b0-4a9e-8719-3354c75ded8e',
  'https://firebasestorage.googleapis.com/v0/b/revirt-42522.appspot.com/o/app%2FWhatsApp%20Image%202022-08-15%20at%209.28.34%20PM.jpeg?alt=media&token=13b6da02-e032-46fd-a29a-d1a7dbd04cd7',
  'https://firebasestorage.googleapis.com/v0/b/revirt-42522.appspot.com/o/app%2FWhatsApp%20Image%202022-08-15%20at%209.28.35%20PM%20(1).jpeg?alt=media&token=44d66421-aebf-446c-90da-004045660ea8',
];

final themeMode = ValueNotifier(2);

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(item, fit: BoxFit.cover, width: 1000.0),
                    // Positioned(
                    //   bottom: 0.0,
                    //   left: 0.0,
                    //   right: 0.0,
                    //   child: Container(
                    //     decoration: const BoxDecoration(
                    //       gradient: LinearGradient(
                    //         colors: [
                    //           Color.fromARGB(200, 0, 0, 0),
                    //           Color.fromARGB(0, 0, 0, 0)
                    //         ],
                    //         begin: Alignment.bottomCenter,
                    //         end: Alignment.topCenter,
                    //       ),
                    //     ),
                    //     padding: const EdgeInsets.symmetric(
                    //         vertical: 10.0, horizontal: 5.0),
                    //     child: Text(
                    //       'No. ${imgList.indexOf(item)} image',
                    //       style: const TextStyle(
                    //         color: Colors.white,
                    //         fontSize: 20.0,
                    //         fontWeight: FontWeight.bold,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                )),
          ),
        ))
    .toList();

class CarouselWithIndicatorDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: CarouselSlider(
                items: imageSliders,
                carouselController: _controller,
                options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                    aspectRatio: 2,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    }),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: imgList.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => _controller.animateToPage(entry.key),
                  child: Container(
                    width: 8.0,
                    height: 8.0,
                    margin: EdgeInsets.symmetric(horizontal: 2.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (Theme.of(context).brightness == Brightness.dark
                                ? Colors.white
                                : Colors.black)
                            .withOpacity(_current == entry.key ? 0.5 : 0.15)),
                  ),
                );
              }).toList(),
            ),
            const SizedBox(
              height: 10,
            ),
            //Spacer(),
          ]),
    );
  }
}
