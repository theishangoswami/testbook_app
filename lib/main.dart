import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testbook/constants/colors.dart';
import 'package:testbook/screens/homescreen_module/homescreen.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            type: BottomNavigationBarType.fixed,
            unselectedLabelStyle:
                GoogleFonts.poppins(color: Colors.black, fontSize: 12),
            selectedLabelStyle:
                GoogleFonts.poppins(color: Colors.black, fontSize: 12)),
        scaffoldBackgroundColor: Colors.white,
        tabBarTheme: TabBarTheme(
          indicatorSize: TabBarIndicatorSize.label,
          labelColor: ColorConfigs.primaryColor,
          unselectedLabelColor: const Color(0xFF979797),
          labelStyle: GoogleFonts.poppins(color: ColorConfigs.primaryColor),
        ),
        appBarTheme: AppBarTheme(
            elevation: 0,
            titleTextStyle: GoogleFonts.poppins(
                fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
            backgroundColor: Colors.transparent,
            iconTheme: const IconThemeData(color: Colors.black)),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
          elevation: MaterialStateProperty.all(0),
        )),
        primaryColor: ColorConfigs.primaryColor,
        inputDecorationTheme: InputDecorationTheme(
          contentPadding: const EdgeInsets.only(left: 15),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 0.5),
              borderRadius: BorderRadius.circular(5)),
          border: const OutlineInputBorder(),
          hintStyle: GoogleFonts.poppins(
            color: const Color(0xFFC4C4C4),
          ),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
