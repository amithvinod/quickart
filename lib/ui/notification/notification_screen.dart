import 'package:flutter/material.dart';
import 'package:quikart_1/ui/common_widgets/appbar_widget.dart';
import 'package:quikart_1/ui/notification/img_notif_widget.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(119),
          child: AppBarWidget(heading: "Notifications")),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          int ind = index + 1;
          return ImageNotification(img: "assets/notification_images/$ind.png");
        },
      ),
    );
  }
}
