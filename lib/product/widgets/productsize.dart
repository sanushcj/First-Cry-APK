import 'package:flutter/material.dart';

import '../../theme/theme.dart';

class SizeWidget extends StatelessWidget {
  const SizeWidget({
    super.key,
    required this.size,
  });
  final String size;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.center,
        height: 50,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: Pallete.orange,
            width: 2.0,
          ),
        ),
        child: Text(
          size,
          style: const TextStyle(fontSize: 10, color: Pallete.amoledBlack),
        ),
      ),
    );
  }
}
