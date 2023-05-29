import 'package:flutter/material.dart';
import 'package:untitled33/account_page.dart';
import 'package:untitled33/bottom_nav_bar.dart';
import 'package:untitled33/home_page.dart';
import 'package:untitled33/search_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BottomNavBar(),
      routes: {
        BottomNavBar.id: (context) => const BottomNavBar(),
        HomePage.id: (context) => const HomePage(),
        SearchPage.id: (context) => const SearchPage(),
        AccountPage.id: (context) => const AccountPage(),
      },
    );
  }
}
