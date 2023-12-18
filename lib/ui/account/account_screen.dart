import 'package:flutter/material.dart';
import 'package:quikart_1/controllers/auth_service.dart';
import 'package:quikart_1/core/constants.dart';
import 'package:quikart_1/ui/account/account_screen_appbar.dart';
import 'package:quikart_1/ui/account/button_widget2.dart';
import 'package:quikart_1/ui/account/button_widget3.dart';
import 'package:quikart_1/ui/account/inside_pages/orders/orders.dart';
import 'package:quikart_1/ui/account/inside_pages/saved_cards/saved_cards.dart';
import 'package:quikart_1/ui/account/button_widget4.dart.dart';
import 'package:quikart_1/ui/authentication/screens/first_screen.dart';

import 'button_widget1.dart';
import 'inside_pages/address/address.dart';
import 'inside_pages/wishlist/wishlist.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

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
        child: AccountAppBar(),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(top: 60.0, left: 25, right: 25),
        child: ListView(
          children: [
            const ButtonWidget1(
                name: "Jasmine Kate",
                email: "JasmineKate001@gmail.com",
                number: "121-224-7890"),
            kWidth,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ButtonWidget2(
                  icon: Icons.add_box,
                  label: "Orders",
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => OrdersPage()));
                  },
                ),
                ButtonWidget2(
                    icon: Icons.favorite,
                    label: "Wishlist",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WishlistPage()));
                    }),
              ],
            ),
            kWidth,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ButtonWidget2(
                    icon: Icons.pin,
                    label: "Address",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AddressPage()));
                    }),
                ButtonWidget2(
                    icon: Icons.credit_card,
                    label: "Saved Cards",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SavedCardsPage()));
                    }),
              ],
            ),
            kWidth,
            const ButtonWidget3(label: "Tickets"),
            kWidth,
            const ButtonWidget3(label: "Privacy Statement"),
            kWidth,
            const ButtonWidget3(label: "Connect with us"),
            kWidth,
            RedButtonWidget(
              label: "Sign Out",
              onPressed: () {
                AuthService.logOut();
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) =>const FirstScreen()));
              },
            )
          ],
        ),
      )),
    );
  }
}
