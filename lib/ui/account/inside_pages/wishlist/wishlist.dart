import 'package:flutter/material.dart';
import 'package:quikart_1/ui/account/inside_pages/wishlist/widget.dart';

import '../../../common_widgets/appbar_widget.dart';
import '../app_bar.dart';

class WishlistPage extends StatelessWidget {
   WishlistPage({super.key});
final itemDetailsList = [
    ["assets/images/wishlistitem_0.png","Minimal Stand","\$25.00",],
    ["assets/images/wishlistitem_0.png","Minimal Stand","\$25.00",],
    ["assets/images/wishlistitem_0.png","Minimal Stand","\$25.00",],
  ];
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
          preferredSize: Size.fromHeight(119),
          child: AccAppBarWidget(heading: "My Orders")),
      body: Padding(
        padding: const EdgeInsets.only(left:21.0,right:21,top:106),
        child: ListView.separated(
          
            itemBuilder: (context, index) {
              return WishListContainer(itemdetails: itemDetailsList[index]);
            },
            separatorBuilder: (context, index) {
              return const SizedBox(height: 63);
            },
            itemCount: 3),
      ),
    );
  }
}