
import 'package:flutter/material.dart';

import '../../theme/theme.dart';

class BuyNowWidget extends StatelessWidget {
  const BuyNowWidget({
    super.key,
    required this.name, required this.bgcolor,
  });
  final String name;
  final Color bgcolor;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: bgcolor,
      height: MediaQuery.of(context).size.height / 10,
      width: MediaQuery.of(context).size.width / 2,
      child:  Text(name,
          style: const TextStyle(
              fontSize: 20,
              color: Pallete.amoledBlack,
              fontWeight: FontWeight.w600)),
    );
  }
}
