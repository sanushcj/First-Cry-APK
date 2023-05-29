import 'package:first_cry_ui/home/widgets/appbar.dart';
import 'package:first_cry_ui/theme/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myappbar,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 8,
              color: Pallete.blueColor,
            )
          ],
        ),
      ),
    );
  }
}
