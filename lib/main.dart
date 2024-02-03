import 'package:flutter/material.dart';
import 'package:islame_project/home/hadeth/hadeth_details_screen.dart';
import 'package:islame_project/home/home_screen.dart';
import 'package:islame_project/home/quran/sura_details_screen.dart';
import 'package:islame_project/my_theme.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Home_Screen.routeName,
      routes: {
        Home_Screen.routeName: (context) => Home_Screen(),
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
        HadethDetailsScreen.routeName: (context) => HadethDetailsScreen(),
      },
      theme: MyTheme.lightMode,
    );
  }
}
