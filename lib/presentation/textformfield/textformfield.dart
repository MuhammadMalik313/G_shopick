import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Textformfield extends StatelessWidget {
  String textInField;
  Widget iconInfield;

  Textformfield({Key? key, required this.textInField,required this.iconInfield}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      decoration: InputDecoration(
        isDense: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        labelText: textInField,
        prefixIcon: iconInfield
      ),
    );
  }
}
