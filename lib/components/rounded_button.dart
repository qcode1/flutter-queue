import 'package:flutter/material.dart';
import 'package:flutter_queue_app/constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function() press;
  final Color color, textColor;
  const RoundedButton({
    Key? key,
    this.text = "",
    required this.press,
    this.color = darkPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return TextButton(
      onPressed: press,
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        backgroundColor: color,
        textStyle: const TextStyle(fontSize: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(color: textColor),
      ),
    );

    // Padding(
    //   padding: const EdgeInsets.symmetric(vertical: 10),
    //   child: ClipRRect(
    //     borderRadius: BorderRadius.circular(40),
    //     child: TextButton(
    //       style: TextButton.styleFrom(
    //         padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
    //         backgroundColor: color,
    //         textStyle: const TextStyle(fontSize: 15),
    //       ),
    //       onPressed: press(),
    //       child: Text(
    //         text,
    //         style: TextStyle(color: textColor),
    //       ),
    //     ),
    //   ),
    // );
  }
}
