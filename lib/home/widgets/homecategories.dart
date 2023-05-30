import 'package:first_cry_ui/theme/theme.dart';
import 'package:flutter/material.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({super.key, required this.name, required this.img});

  final String name;
  final String img;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
              img,
            ),
            radius: 45,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            name, 
            style: const TextStyle(color: Pallete.amoledBlack),
          )
        ],
      ),
    );
  }
}
