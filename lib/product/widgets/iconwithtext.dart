import 'package:flutter/material.dart';

import '../../theme/theme.dart';

class IconWithText extends StatelessWidget {
  const IconWithText({
    super.key,
    required this.icon,
    required this.name,
  });
  final IconData icon;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 35,
          color: Pallete.amoledBlack,
        ),
        Text(
          name,
          style: const TextStyle(fontSize: 12, color: Pallete.amoledBlack),
        )
      ],
    );
  }
}
