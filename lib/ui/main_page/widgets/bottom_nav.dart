import 'package:flutter/material.dart';
import 'package:quikart_1/core/colors.dart';

ValueNotifier<int> indexChangeNotif = ValueNotifier(0);

class BottomNavWidget extends StatefulWidget {
  const BottomNavWidget({super.key});

  @override
  State<BottomNavWidget> createState() => _BottomNavWidgetState();
}

class _BottomNavWidgetState extends State<BottomNavWidget> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: indexChangeNotif,
        builder: ((context, int value, _) {
          return BottomNavigationBar(
              currentIndex: value,
              selectedIconTheme: const IconThemeData(
                color: textColor,
              ),
              onTap: (index) {
                setState(() {
                  indexChangeNotif.value = index;
                });
                
              },
              selectedItemColor: textColor,
              type: BottomNavigationBarType.fixed,
              items: const [
                BottomNavigationBarItem(
                    activeIcon: Icon(Icons.home_rounded),
                    icon: Icon(Icons.home_outlined),
                    label: "Home"),
                BottomNavigationBarItem(
                    activeIcon: Icon(Icons.person_2_rounded),
                    icon: Icon(Icons.person_outline_rounded),
                    label: "Account"),
                BottomNavigationBarItem(
                  icon: Icon(Icons.notifications_outlined),
                    activeIcon: Icon(Icons.notifications), label: "Notifications"),
                BottomNavigationBarItem(
                  activeIcon: Icon(Icons.shopping_cart),
                    icon: Icon(Icons.shopping_cart_outlined), label: "Cart"),
              ]);
        }));
  }
}
