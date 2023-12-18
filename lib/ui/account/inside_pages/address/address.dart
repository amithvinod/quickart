import 'package:flutter/material.dart';
import 'package:quikart_1/core/colors.dart';
import 'package:quikart_1/core/constants.dart';
import 'package:quikart_1/ui/account/button_widget4.dart.dart';
import 'package:quikart_1/ui/account/inside_pages/address/widget.dart';
import 'package:quikart_1/ui/account/inside_pages/app_bar.dart';

import 'package:quikart_1/ui/common_widgets/appbar_widget.dart';
import 'package:quikart_1/ui/main_page/widgets/bottom_nav.dart';

class AddressPage extends StatelessWidget {
  AddressPage({super.key});
  

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
          child: AccAppBarWidget(heading: "Address")),
      body: Column(
        children: [
          SizedBox(
            height: rHeight(600),
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return kWidth;
              },
              padding: const EdgeInsets.only(top: 55, left: 25, right: 25),
              itemCount: 2,
              itemBuilder: (context, index) {
                return  AddressBar(index: index,);
              },
            ),
          ),
          SizedBox(
              width: rWidth(342),
              child: RedButtonWidget(label: "Add Address", onPressed: () {}))
        ],
      ),
    );
  }
}
