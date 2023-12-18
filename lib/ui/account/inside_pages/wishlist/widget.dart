import 'package:flutter/material.dart';


class WishListContainer extends StatelessWidget {
  final List<String> itemdetails;
  const WishListContainer ({super.key,required this.itemdetails});

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
      
      height: rHeight(100),
      width: rWidth(332),
      child: Row(
        
        children: [
        SizedBox(height:rHeight(100),child: Image.asset(itemdetails[0])),
        SizedBox(width: rWidth(15),),
        Padding(
          padding: const EdgeInsets.only(top:8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text(itemdetails[1],style:const TextStyle(color: Color.fromRGBO(144, 144, 144, 1)),),
            Text(itemdetails[2],style: const TextStyle(fontWeight: FontWeight.w600,color: Colors.black),)
          ]),
        ),
        const Spacer(),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:  [
      
          IconButton(onPressed: (){}, icon:const Icon(Icons.cancel)),
           const Icon(Icons.shopping_bag)
        ]),
        ]
      ),
    );
  }
}