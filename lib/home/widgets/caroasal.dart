import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CurosalSliderHome extends StatelessWidget {
  const CurosalSliderHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 4,
      child: CarouselSlider(
        items: imagetoCarosal(context),
        options: CarouselOptions(
            viewportFraction: 1,
            enlargeCenterPage: true,
            autoPlay: true,
            // aspectRatio: 16 / 9,
            height: MediaQuery.of(context).size.height / 4),
      ),
    );
  }

  List<Widget> imagetoCarosal(BuildContext context) {
    return corosimg
        .map((String e) => Container(
              // height: MediaQuery.of(context).size.height / 5,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  filterQuality: FilterQuality.high,
                  image: NetworkImage(
                    e,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ))
        .toList();
  }
}

List<String> corosimg = <String>[
  'https://cdn.fcglcdn.com/brainbees/banners/hp_mktg_p01_fab_fas_vacay_desktop1684221180352.webp',
  'https://cdn.fcglcdn.com/brainbees/banners/babyhug-summer_cc_hp1t1685084521939.webp',
  'https://cdn.fcglcdn.com/brainbees/banners/hp_mktg_p04_mega_deal_vacay_desktop1684846858974.webp',
  'https://cdn.fcglcdn.com/brainbees/banners/pampers_dia_dp_hp_mkt_po3_f351682684593139.webp',
  'https://cdn.fcglcdn.com/brainbees/banners/mktng_hp_svs_20may231685361526140.webp'
];
