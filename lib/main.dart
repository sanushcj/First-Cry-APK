import 'package:first_cry_ui/home/home_page.dart';
import 'package:first_cry_ui/theme/application_theme.dart';
import 'package:flutter/material.dart';

import 'home/mybottomnavbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: FirstCryTheme.theme,
      home: const MyBottomNavBar(),
    );
  }
}