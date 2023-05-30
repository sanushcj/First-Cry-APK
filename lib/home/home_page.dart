import 'package:first_cry_ui/home/widgets/appbar.dart';
import 'package:first_cry_ui/home/widgets/lastpage.dart';
import 'package:first_cry_ui/home/widgets/squarewidget.dart';
import 'package:first_cry_ui/theme/theme.dart';
import 'package:flutter/material.dart';
import 'widgets/caroasal.dart';
import 'widgets/homecategories.dart';

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
      body: SizedBox(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 6.2,
                  color: Pallete.whiteColor,
                  child: ListView.separated(
                    padding: const EdgeInsetsDirectional.only(top: 10),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => HomeCategories(
                        name: homeCategoriesListname[index],
                        img: homeCategoriesListimg[index]),
                    itemCount: homeCategoriesListname.length,
                    separatorBuilder: (BuildContext context, int index) =>
                        const SizedBox(
                      width: 20,
                    ),
                  ),
                ),
              ),
              const CurosalSliderHome(),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'PREMIUM BOUTIQUES',
                      style: TextStyle(
                          color: Pallete.amoledBlack,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                          color: Pallete.orange,
                          fontWeight: FontWeight.w400,
                          fontSize: 15),
                    ),
                  ],
                ),
              ),
              const PremiumBotiqueContainer(),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 2,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('lib/assets/deal1.png'))),
              ),
              const LastPageHome()
            ],
          ),
        ),
      ),
    );
  }
}

List homeCategoriesListname = <String>[
  'BOYS',
  'GIRLS',
  'FOOTWEAR',
  'TOYS',
  'DIAPERING',
  'GEAR',
  'FEEDING',
  'BATH',
  'NURSERY',
  'MOMS',
  'HEALTH',
  'BOUTIQUES'
];

List homeCategoriesListimg = <String>[
  'https://drive.google.com/uc?export=view&id=1mz-4YQCtVgBbzcDTB8IeM4IG1Q7DdKv0',
  'https://img.freepik.com/free-photo/excited-ginger-lady-hat-holding-straw-bag-ecstatic-long-haired-girl-summer-outfit-enjoying-good-day_197531-11080.jpg?w=996&t=st=1685376435~exp=1685377035~hmac=75c0c11f171e11ab496dd15768c0fba66a1926f74d0ea5ca4364e70881d11a90',
  'https://www.fisdom.com/wp-content/uploads/2022/07/Campus-Activewear.png',
  'https://images-cdn.ubuy.co.in/6421a0e99d210c29112c3843-hahaland-toddler-toys-for-1-year-old-boy.jpg',
  'https://cdn-de.agrilife.org/extension/departments/fch/diapering-toilet-learning-inclusive-infant-toddler-care/courses/images/diapering-and-toilet-learning-primary2.jpg',
  'https://res.cloudinary.com/babylist/image/upload/f_auto,q_auto:best,c_scale,w_768/v1659997704/hello-baby/Baby_Gear_Save_vs._Splurge.jpg',
  'https://cdn.cdnparenting.com/articles/2018/09/sleep-and-feeding-schedule-for-your-three-month-old.webp',
  'https://cdn.cdnparenting.com/articles/2018/09/pexels-photo-914253.jpeg ',
  'https://cdn.shopify.com/s/files/1/0310/2988/7114/articles/nursery_ideas_1200x.jpg?v=1639090532',
  'https://imgix.bustle.com/uploads/getty/2022/2/25/59bcef24-120c-4206-8ba6-3576dfccf8ed-getty-1369926717.jpg?w=540&fit=crop&crop=faces&auto=format%2Ccompress',
  'https://www.uhc.com/health-and-wellness/health-topics/childrens-health/child-well-visits/_jcr_content/root/regioncontainer-main/responsivegrid/image.coreimg.82.1280.jpeg/1613218628653/child-well-visit-baby-stethoscope-860x506.jpeg',
  'https://alamocitymoms.com/wp-content/uploads/2022/05/F0A067F8-D6CB-495E-90A5-DAF9FD5BF521-scaled.jpeg'
];
