import 'package:flutter/cupertino.dart';

import '../../theme/theme.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget({
    super.key,
    required this.firstprice,
    required this.secondtext,
    required this.first,
    required this.second,
    required this.size,
  });
  final String firstprice;
  final double size;
  final String secondtext;
  final Color first;
  final Color second;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 1.5,
      // color: Pallete.lightyellow,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            firstprice,
            style: TextStyle(
                fontWeight: FontWeight.w800, fontSize: size, color: first),
          ),
          Text(
            secondtext,
            style: TextStyle(color: second),
          )
        ],
      ),
    );
  }
}
