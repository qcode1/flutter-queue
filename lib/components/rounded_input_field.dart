import 'package:flutter/material.dart';
import 'package:flutter_queue_app/components/text_field_container.dart';

import '../constants.dart';

class RoundedInputFIeld extends StatelessWidget {
  final String hintTextString;
  final IconData? icon;
  final ValueChanged<String> onChanged;
  const RoundedInputFIeld({
    Key? key,
    required this.hintTextString,
    this.icon,
    // = Icons.person
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Colors.lightBlue,
          ),
          hintText: hintTextString,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
