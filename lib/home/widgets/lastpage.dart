import 'package:flutter/material.dart';

import '../../theme/theme.dart';

class LastPageHome extends StatelessWidget {
  const LastPageHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      height: MediaQuery.of(context).size.height / 1.5,
      width: double.infinity,
      decoration: const BoxDecoration(color: Pallete.specialcream),
      child: Column(children: [
        Container(
          alignment: Alignment.topCenter,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://cdn.fcglcdn.com/brainbees/images/cattemplate/750_186_Deals_Corner_header_230523.gif'))),
          // color: Pallete.blueColor,
          height: MediaQuery.of(context).size.height / 7,
        ),
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                    width: 250,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(dealCorner[index])),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
              separatorBuilder: (context, index) =>
                  const SizedBox(width: 25),
              itemCount: 5),
        )
      ]),
    );
  }
}

List<String> dealCorner = [
  "https://cdn.fcglcdn.com/brainbees/images/cattemplate/438_624_Deal_Corner_Tees_Sets_&_more_default_230523.webp",
  'https://cdn.fcglcdn.com/brainbees/images/cattemplate/438_624_Deal_Corner_honeyhap_default__230523.webp',
  'https://cdn.fcglcdn.com/brainbees/images/cattemplate/438_624_Deal_Corner_babyoye_default_230523.webp',
  'https://cdn.fcglcdn.com/brainbees/images/cattemplate/438_624_Deal_Corner_Sets_default_230523.webp',
  'https://cdn.fcglcdn.com/brainbees/images/cattemplate/438_624_Deal_Corner_Shorts_&_Skirts_default_230523.webp'
];
