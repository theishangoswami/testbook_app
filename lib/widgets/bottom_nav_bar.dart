import 'package:flutter/material.dart';
import 'package:testbook/constants/colors.dart';
import 'package:testbook/screens/homescreen_module/homescreen.dart';
import 'package:testbook/screens/superscreen/superscreen.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        const HomeScreen(),
        const SuperScreen(),
        const SuperScreen(),
        const SuperScreen(),
        const SuperScreen(),
      ][currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              offset: const Offset(0, -3),
              blurRadius: 30,
              spreadRadius: 0,
              color: const Color(0xFFFF6838).withOpacity(0.13))
        ]),
        child: BottomNavigationBar(
            onTap: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            currentIndex: currentIndex,
            items: [
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 4.0, top: 4),
                  child: Icon(
                    Icons.home,
                    color: currentIndex == 0 ? ColorConfigs.primaryColor : null,
                    size: 20,
                  ),
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 4.0, top: 4),
                  child: Icon(
                    Icons.assignment,
                    color: currentIndex == 1 ? ColorConfigs.primaryColor : null,
                    size: 20,
                  ),
                ),
                label: 'Tests',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 4.0, top: 4),
                  child: Icon(
                    Icons.bolt,
                    color: currentIndex == 2
                        ? ColorConfigs.primaryColor
                        : Colors.redAccent,
                    size: 25,
                  ),
                ),
                label: 'Super',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 4.0, top: 4),
                  child: Icon(
                    Icons.update,
                    color: currentIndex == 3 ? ColorConfigs.primaryColor : null,
                    size: 20,
                  ),
                ),
                label: 'Study',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 4.0, top: 4),
                  child: Icon(
                    Icons.school,
                    color: currentIndex == 4 ? ColorConfigs.primaryColor : null,
                    size: 20,
                  ),
                ),
                label: 'SkillAca..',
              ),
              // BottomNavigationBarItem(
              //   icon: Padding(
              //     padding: const EdgeInsets.only(bottom: 4.0, top: 4),
              //     child: SvgPicture.asset(
              //       Assets.icons.spoon,
              //       color: currentIndex == 1 ? ColorConfigs.primaryColor : null,
              //       height: 17,
              //     ),
              //   ),
              //   label: 'Orders',
              // ),
            ]),
      ),
    );
  }
}
