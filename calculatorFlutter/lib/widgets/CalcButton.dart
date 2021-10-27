import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  final String text;
  final int fillColor;
  final int textColor;
  final double textSize;
  final Function callback;

  const CalcButton({
    Key key,
    this.text,
    this.fillColor,
    this.textColor = 0xFFFFFFFF,
    this.textSize = 28,
    this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: SizedBox(
        width: 65,
        height: 65,
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: fillColor != null
                ? MaterialStateProperty.all(Color(fillColor))
                : null,
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
            )),
          ),
          onPressed: () {
            callback(text);
          },
          child: Text(
            text,
            style: TextStyle(
              fontSize: textSize,
              color: Color(textColor),
            ),
          ),
        ),
      ),
    );
  }
}
