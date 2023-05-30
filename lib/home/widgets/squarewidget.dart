import 'package:flutter/material.dart';

import '../../theme/theme.dart';

class PremiumBotiqueContainer extends StatelessWidget {
  const PremiumBotiqueContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 4,
      color: Pallete.whiteColor,
      child: ListView.separated(
        padding: const EdgeInsetsDirectional.only(top: 10),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Column(
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(premiumbotiqueimg[index])),
                border: Border.all(
                  color: Pallete.amoledBlack,
                  width: 2.0,
                ),
              ),
            ),
          ],
        ),
        itemCount: 5,
        separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(
          width: 20,
        ),
      ),
    );
  }
}

List<String> premiumbotiqueimg = <String>[
  'https://cdn.fcglcdn.com/brainbees/images/boutique/670x670/29968.webp',
  'https://cdn.fcglcdn.com/brainbees/images/boutique/670x670/29969.webp',
  'https://cdn.fcglcdn.com/brainbees/images/boutique/670x670/29971.webp',
  'https://cdn.fcglcdn.com/brainbees/images/boutique/670x670/29972.webp',
  'https://cdn.fcglcdn.com/brainbees/images/boutique/670x670/29973.webp'
];
