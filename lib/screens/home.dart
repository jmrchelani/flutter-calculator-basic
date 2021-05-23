import 'package:basic_calculator/provider/core.dart';
import 'package:basic_calculator/widgets/calculation_area.dart';
import 'package:basic_calculator/widgets/calculator_buttons.dart';
import 'package:basic_calculator/widgets/theme_mode_buttons.dart';
import 'package:flutter/material.dart';
import 'package:basic_calculator/colors.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: (Provider.of<CoreData>(context).nightMode)
          ? darkDarkOne
          : lightLightOne,
      body: SafeArea(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.end,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ThemeModeButtons(),
                    CalculationArea(),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: (height < 600) ? 10 : 20,
            ),
            Expanded(
              flex: 3,
              child: CalculatorButtons(),
            )
          ],
        ),
      ),
    );
  }
}
