import 'package:flutter/cupertino.dart';

import '../../theme/theme.dart';

class ProductImageContainer extends StatelessWidget {
  const ProductImageContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      width: double.infinity,
      color: Pallete.blueColor,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: productimg.length,
          itemBuilder: (context, index) => Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(productimg[index]))),
              )),
    );
  }
}

List<String> productimg = [
  'https://cdn.fcglcdn.com/brainbees/images/products/720x720/11921428a.webp',
  'https://cdn.fcglcdn.com/brainbees/images/products/720x720/11921428b.webp',
  'https://cdn.fcglcdn.com/brainbees/images/products/720x720/11921428c.webp',
  'https://cdn.fcglcdn.com/brainbees/images/products/720x720/11921428d.webp'
];
