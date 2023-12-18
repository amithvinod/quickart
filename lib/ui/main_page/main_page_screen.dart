import 'package:flutter/material.dart';

import 'package:quikart_1/ui/main_page/widgets/bottom_nav.dart';

import 'package:quikart_1/ui/main_page/home_screen/home_page.dart';

import '../account/account_screen.dart';
import '../cart/cart_screen.dart';
import '../notification/notification_screen.dart';

class MainPageScreen extends StatelessWidget {
 const MainPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _pages = [
    HomeScreen(),
    AccountScreen(),
    NotificationScreen(),
    CartScreen()
  ];
    //var controller = Get.put(HomeController());
    return 
      Scaffold(
        body: ValueListenableBuilder(valueListenable: indexChangeNotif, 
      builder:(context,int index,_){
        return _pages[index];
      }),
    
      bottomNavigationBar: const BottomNavWidget(),
    );
    
  }
}
