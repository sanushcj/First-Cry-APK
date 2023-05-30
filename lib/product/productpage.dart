import 'package:first_cry_ui/product/widgets/buynowwidget.dart';
import 'package:first_cry_ui/product/widgets/iconwithtext.dart';
import 'package:first_cry_ui/product/widgets/pricetext.dart';
import 'package:first_cry_ui/product/widgets/productimageContainer.dart';
import 'package:first_cry_ui/product/widgets/productsize.dart';
import 'package:first_cry_ui/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductUI extends StatelessWidget {
  const ProductUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Pallete.lightyellow,
        title: const Text(
          'Product UI',
          style: TextStyle(color: Pallete.amoledBlack),
        ),
        leading: const Icon(
          CupertinoIcons.back,
          color: Pallete.amoledBlack,
        ),
      ),
      body: Stack(children: [
        Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Pallete.whiteColor,
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ProductImageContainer(),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Primo Gino 100% Cotton Above Knee Length Soccer Inspired HD Logo Print Shorts - Yellow',
                        style: TextStyle(color: Pallete.amoledBlack),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: PriceWidget(
                          firstprice: '\u{20B9}${405.02}',
                          size: 25,
                          secondtext: 'Only 3 left',
                          first: Pallete.amoledBlack,
                          second: Pallete.orange),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8),
                      child: SizedBox(
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            PriceWidget(
                                firstprice: 'MRP \u{20B9}${699.00}',
                                size: 15,
                                secondtext: '40% OFF',
                                first: Pallete.greyColor,
                                second: Pallete.orange),
                            Icon(CupertinoIcons.heart),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        ' MRP incl. all taxes; Add charges may apply on discounted price',
                        style:
                            TextStyle(fontSize: 10, color: Pallete.amoledBlack),
                      ),
                    ),
                    const Divider(
                      thickness: 5,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10.0, right: 15, top: 20),
                      child: SizedBox(
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'SIZE',
                              style: TextStyle(
                                  fontSize: 15, color: Pallete.amoledBlack),
                            ),
                            SizedBox(
                              child: Row(
                                children: const [
                                  Icon(
                                    CupertinoIcons
                                        .arrow_up_left_arrow_down_right,
                                    color: Pallete.blueColor,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    'SIZE HELP',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Pallete.amoledBlack),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: SizedBox(
                        // alignment: Alignment.center,
                        height: 50,
                        width: double.infinity,
                        child: ListView.separated(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) =>
                                SizeWidget(size: index.toString()),
                            separatorBuilder: (context, index) =>
                                const SizedBox(width: 20),
                            itemCount: 5),
                      ),
                    ),
                    const Divider(
                      color: Pallete.greyColor,
                      thickness: 2,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.center,
                        height: MediaQuery.of(context).size.height / 8.5,
                        width: double.infinity,
                        // color: Pallete.searchBarColor,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  child: Row(
                                    children: const [
                                      Icon(
                                        CupertinoIcons.location,
                                        color: Pallete.amoledBlack,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        'Enter Delivery Pincode here',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Pallete.amoledBlack),
                                      )
                                    ],
                                  ),
                                ),
                                const Text(
                                  'CHECK',
                                  style: TextStyle(
                                      fontSize: 14, color: Pallete.orange),
                                )
                              ],
                            ),
                            const Divider(
                              thickness: 1,
                              color: Pallete.greyColor,
                            ),
                            const Text(
                              'Same Day/Next Day delivery applicable on this product. Enter pincode to check availability in your area.',
                              style: TextStyle(
                                  fontSize: 14, color: Pallete.amoledBlack),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Divider(
                      thickness: 8,
                      color: Pallete.greyColor,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height / 6,
                      width: double.infinity,
                      // color: Pallete.orange,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            IconWithText(
                              icon: CupertinoIcons.gift,
                              name: 'GIFT WRAP',
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            IconWithText(
                              icon: CupertinoIcons.return_icon,
                              name: '30 DAYS RETURN',
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 80,
                    )
                  ]),
            )),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 12,
            color: Pallete.specialcream,
            child: Row(
              children: const [
                BuyNowWidget(bgcolor: Pallete.orange, name: "Add to Cart"),
                BuyNowWidget(bgcolor: Pallete.blueColor, name: "Buy Now")
              ],
            ),
          ),
        )
      ]),
    );
  }
}
