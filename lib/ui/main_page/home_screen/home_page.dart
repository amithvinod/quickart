import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quikart_1/core/constants.dart';
import 'package:quikart_1/ui/common_widgets/product_card.dart';
import 'package:quikart_1/ui/common_widgets/searchbar.dart';
import 'package:quikart_1/ui/main_page/home_screen/promo_widget.dart';
import 'package:quikart_1/ui/main_page/home_screen/widgets/category.dart';
import 'package:quikart_1/ui/main_page/home_screen/widgets/flash_sale.dart';
import 'package:quikart_1/ui/main_page/home_screen/widgets/main_title.dart';
import 'package:quikart_1/ui/main_page/home_screen/widgets/recommended_product.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double rHeight(double inp) {
      return (height / 852) * inp;
    }

    double width = MediaQuery.of(context).size.width;
    double rWidth(double inp) {
      return (width / 393) * inp;
    }

    return Scaffold(
      appBar: const PreferredSize(
        child: SearchWidget(),
        preferredSize: Size.fromHeight(150),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 16.0, top: 16, right: 16),
        child: SingleChildScrollView(
          child: SizedBox(
            child: Column(
              
              children: [
                const PromoWidget(),
                kWidth,
                const MainTitle(
                    prefixTitle: "Category", suffixTitle: "More Category"),
                SizedBox(height:rHeight(165) ,child: const CategoryHome()),
                const MainTitle(
                    prefixTitle: "Flash Sale", suffixTitle: "See More"),
                kWidth,
                const FlashSaleHome(),
                const RecommProductWidget(),
                GridView.count(
                  childAspectRatio: 1.2/2,
                  physics:const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  crossAxisSpacing: 13,
                  mainAxisSpacing: 12,
                  children:const [ProductCard(),ProductCard(),ProductCard(),ProductCard(),ProductCard(),ProductCard(),]
                  )
              ],
            ),
          ),
        ),
      )),
    );
  }
}


class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 48.0, horizontal: 22),
          child: Column(
            children: [
              const SearchBar(),
              kWidth,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.location_on),
                  Text("400097 - Mumbai, Maharashtra ")
                ],
              ),
            ],
          ),
        ),
        const Divider(thickness: 2,)
      ],
    );
  }
}
