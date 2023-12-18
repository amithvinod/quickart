import 'package:flutter/cupertino.dart';


class MainTitle extends StatelessWidget {
  final String prefixTitle, suffixTitle;
  const MainTitle(
      {super.key, required this.prefixTitle, required this.suffixTitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(prefixTitle,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            )),
        Text(suffixTitle,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(85, 172, 238, 1)
            ))
      ],
    );
  }
}
