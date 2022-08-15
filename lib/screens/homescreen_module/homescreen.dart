import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stories_for_flutter/stories_for_flutter.dart';
import 'package:testbook/constants/colors.dart';
import 'package:testbook/widgets/carousel.dart';
import 'package:testbook/widgets/daily_current_affairs.dart';
import 'package:testbook/widgets/options_section.dart';
import 'package:testbook/widgets/stories.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFedf1f4),
        appBar: AppBar(
          leading: Icon(
            Icons.menu,
            color: Colors.white70,
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.notifications_outlined),
              color: Colors.white70,
              onPressed: (() {}),
            )
          ],
          title: Container(
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: ColorConfigs.lightBlueAppbarColor,
            ),
            child: const TextField(
              decoration: InputDecoration(
                hintText: 'Search exams, tests and more',
                hintStyle: TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                  size: 16,
                ),
              ),
            ),
          ),
          backgroundColor: ColorConfigs.darkBlueAppBarColor,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const HeaderStories(),
            SizedBox(
              height: 10,
            ),
            CarouselWithIndicatorDemo(),
            const OptionsSection(),
            const SizedBox(
              height: 10,
            ),
            const Current_Affairs_Widget(),
            const SizedBox(
              height: 10,
            ),
          ],
        ));
  }
}
