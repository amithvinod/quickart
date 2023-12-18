import 'package:flutter/material.dart';

class ButtonWidget1 extends StatelessWidget {
  
  final String name;
  final String email;
  final String number;
  const ButtonWidget1({super.key, required this.name,required this.email,required this.number});
  
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

    return SizedBox(
      width: rWidth(314),
      height: rHeight(96),
      child: OutlinedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            side: const BorderSide(color: Color(0xff000354)),
            backgroundColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: [
            Text(name,style:const TextStyle(fontWeight: FontWeight.w700,color: Color.fromRGBO(5, 5, 5, 1),fontSize: 16),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                
                Text(email,
                    style: const TextStyle(
                      color: Color.fromRGBO(5, 5, 5, 0.5),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    )),
                     TextButton(
                      onPressed: (){},
                      child:const Text("Edit",style: TextStyle(color:  Color.fromRGBO(0, 3, 84, 0.9),fontSize: 18),)
                      ,
                      ),
              ],
            ),
            Text(number,
                    style: const TextStyle(
                      color: Color.fromRGBO(5, 5, 5, 0.5),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    )),
          ],
        ),
      ),
    );
  }
}