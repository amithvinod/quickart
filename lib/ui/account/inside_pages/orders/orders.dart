import 'package:flutter/material.dart';
import 'package:quikart_1/ui/account/inside_pages/app_bar.dart';
import 'package:quikart_1/ui/account/inside_pages/orders/widget.dart';

import '../../../common_widgets/appbar_widget.dart';

class OrdersPage extends StatelessWidget {
  OrdersPage({super.key});
  final orderDetailsList = [
    ["Order No238562312","20/03/2023","Quantity: 03","Total Amount: \$150","Canceled"],
    ["Order No238562312","20/03/2023","Quantity: 03","Total Amount: \$150","Canceled"],
    ["Order No238562312","20/03/2023","Quantity: 03","Total Amount: \$150","Canceled"],
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
        padding: const EdgeInsets.only(left:11.0,right:11,top:30),
        child: Container(
          width:rWidth(375) ,
          padding:const EdgeInsets.all(9),
          height:rHeight(573) ,
          color: const Color.fromRGBO(245, 245, 245, 1),
          child: ListView.separated(
            
              itemBuilder: (context, index) {
                return MyOrderContainer(orderDetails: orderDetailsList[index]);
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: 25);
              },
              itemCount: 3),
        ),
      ),
    );
  }
}
