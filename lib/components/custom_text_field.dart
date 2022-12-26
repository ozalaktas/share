
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, required this.labelText, required this.onChange, this.labelColor = Colors.grey }) : super(key: key);

  final String labelText;
  final Function(String) onChange;
  final Color labelColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: TextFormField(
        decoration: InputDecoration(label: Text(labelText,style: TextStyle(color: labelColor),)),
        onChanged: onChange,
      ),
    );
  }
}