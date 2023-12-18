import 'package:flutter/material.dart';

class MyOrderContainer extends StatelessWidget {
  final List<String> orderDetails;
  
  const MyOrderContainer({
    super.key,
    required this.orderDetails,
  });
  

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

    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.white,),
      
      height: rHeight(200),
      width: rWidth(335),
      child: Column(
        //padding: EdgeInsets.only(left: 16, right: 16),
        children: [
          ListTile(
            title: Text(orderDetails[0]),
            trailing: Text(orderDetails[1],style: TextStyle(fontSize: 14,color: const Color.fromRGBO(144, 144, 144, 1))),
          ),
          const Divider(),
          ListTile(leading: Text(orderDetails[2]), trailing: Text(orderDetails[3])),
          SizedBox(height: rHeight(16),),
          ListTile(
            title: Center(child: Text(orderDetails[4])),
          )
        ],
      ),
    );
  }
}
