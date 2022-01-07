import 'package:flutter/material.dart';
import 'package:e_book_app/shared/theme.dart';

class CustomForm extends StatefulWidget {
  final String title;
  final String hint;
  final bool obscureText;
  var controller = TextEditingController();

  CustomForm(
      {Key? key,
      required this.title,
      required this.hint,
      required this.obscureText,
      required this.controller})
      : super(key: key);

  @override
  State<CustomForm> createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  String username = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: defaultMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.title),
          const SizedBox(
            height: 8,
          ),
          TextFormField(
            controller: widget.controller,
            onChanged: (String value) {
              username = value;
            },
            obscureText: widget.obscureText,
            cursorColor: kPrimaryBlue,
            decoration: InputDecoration(
                hintText: widget.hint,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(focusedRadius),
                  borderSide: BorderSide(color: kCtaOrange),
                )),
          ),
        ],
      ),
    );
  }
}
