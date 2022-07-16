import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Textformfield extends StatefulWidget {
  String textInField;
  Widget iconInfield;
  TextEditingController fieldControllers;
  bool visiblePassword;
  Widget? sufixxIconinField;

  Textformfield(
      {Key? key,
      required this.textInField,
      required this.iconInfield,
      required this.fieldControllers,
      this.visiblePassword = false,
      this.sufixxIconinField})
      : super(key: key);

  @override
  State<Textformfield> createState() => _TextformfieldState();
}

class _TextformfieldState extends State<Textformfield> {
  @override
  Widget build(BuildContext context) {
  

    return TextFormField(
        obscureText: widget.visiblePassword,
        controller: widget.fieldControllers,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          isDense: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          labelText: widget.textInField,
          prefixIcon: widget.iconInfield,
          suffixIcon: widget.textInField == "Create password" ||
                  widget.textInField == "Confirm password" ||
                  widget.textInField == "Enter Your password"
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      widget.visiblePassword = !widget.visiblePassword;
                    });
                  },
                  icon: Icon(widget.visiblePassword
                      ? Icons.visibility_off
                      : Icons.visibility))
              : null,
        ));
  }
}
