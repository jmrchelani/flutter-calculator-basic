import 'package:basic_calculator/provider/core.dart';
import 'package:flutter/material.dart';
import 'package:basic_calculator/colors.dart';
import 'package:provider/provider.dart';

class ThemeModeButtons extends StatefulWidget {
  @override
  _ThemeModeButtonsState createState() => _ThemeModeButtonsState();
}

class _ThemeModeButtonsState extends State<ThemeModeButtons> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // OutlinedButton.icon(onPressed: onPressed, icon: icon, label: label)
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: darkLightOne,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    bottomLeft: Radius.circular(25)),
              ),
            ),
            onPressed: () async {
              await Provider.of<CoreData>(context, listen: false)
                  .toggleNightMode(false);
              setState(() {});
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(
                Icons.wb_sunny_outlined,
                color: (!Provider.of<CoreData>(context).nightMode)
                    ? Colors.white
                    : Colors.white24,
              ),
            ),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: darkLightOne,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    bottomRight: Radius.circular(25)),
              ),
            ),
            onPressed: () async {
              await Provider.of<CoreData>(context, listen: false)
                  .toggleNightMode(true);
              setState(() {});
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(
                Icons.nights_stay_outlined,
                color: (Provider.of<CoreData>(context).nightMode)
                    ? Colors.white
                    : Colors.white24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
