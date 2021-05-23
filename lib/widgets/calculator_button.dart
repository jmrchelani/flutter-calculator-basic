import 'package:basic_calculator/provider/core.dart';
import 'package:basic_calculator/widgets/calculation_area.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CalcButton extends StatelessWidget {
  final String text;
  final Color color;
  final Icon icon;
  final Function func;

  CalcButton({Key key, this.text, this.color, this.icon, this.func});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double ez = height / 45;
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: Color(0xFF272B34),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
      onPressed: () {
        func();
      },
      child: Padding(
        padding: EdgeInsets.only(top: ez, bottom: ez),
        child: (icon != null)
            ? icon
            : Text(
                text,
                style: TextStyle(
                  fontSize: (height < 700) ? 11 : 19,
                  color: (color != null) ? color : Colors.white,
                ),
              ),
      ),
    );
  }
}
