import 'package:flutter/material.dart';
import 'package:quikart_1/core/constants.dart';
import 'package:quikart_1/ui/account/inside_pages/app_bar.dart';
import 'package:quikart_1/ui/account/inside_pages/saved_cards/widget.dart';

import '../../../common_widgets/appbar_widget.dart';

class SavedCardsPage extends StatelessWidget {
  const SavedCardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(119),
            child: AccAppBarWidget(heading: "Saved Cards")),
        body: ListView.separated(
          padding: const EdgeInsets.only(top: 80,left:30,right:30),
            itemBuilder:(context, index) {
              return SavedCardsContainer(index: index);
            },
            separatorBuilder:  (context, index) {
              return kWidth;
            },
            itemCount: 2));
  }
}
