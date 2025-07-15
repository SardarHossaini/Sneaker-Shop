import 'package:flutter/material.dart';
import 'package:sneaker_shop/const.dart';

// ignore: must_be_immutable
class Customtextfeild extends StatefulWidget {
  final String title;
  final bool icon;
  final String hintText;
  bool obScureText;
  Customtextfeild({
    super.key,
    required this.title,
    this.icon = false,
    this.hintText = '',
    this.obScureText = false,
  });

  @override
  State<Customtextfeild> createState() => _CustomtextfeildState();
}

class _CustomtextfeildState extends State<Customtextfeild> {
  Icon openEye = const Icon(Icons.remove_red_eye);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: TextStyle(color: secondaryColor, fontSize: 13),
        ),
        Container(
          height: 40,
          child: TextField(
            obscureText: widget.obScureText,
            decoration: InputDecoration(
                hintText: widget.hintText,
                hintStyle: TextStyle(color: secondaryColor, fontSize: 13),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: primaryColor,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8)),
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: secondaryColor,
                      width: 0.6,
                    ),
                    borderRadius: BorderRadius.circular(8)),
                suffix: widget.icon
                    ? GestureDetector(
                        child: openEye,
                        onTap: () {
                          setState(() {
                            widget.obScureText = !widget.obScureText;
                            if (widget.obScureText) {
                              openEye = const Icon(Icons.remove_red_eye);
                            } else {
                              openEye = const Icon(
                                Icons.close,
                                color: Colors.red,
                              );
                            }
                          });
                        },
                      )
                    : null,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 0)),
          ),
        ),
      ],
    );
  }
}
