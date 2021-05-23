import 'package:basic_calculator/provider/core.dart';
import 'package:flutter/material.dart';
import 'package:basic_calculator/colors.dart';
import 'package:provider/provider.dart';
import 'calculator_button.dart';

class CalculatorButtons extends StatefulWidget {
  @override
  _CalculatorButtonsState createState() => _CalculatorButtonsState();
}

class _CalculatorButtonsState extends State<CalculatorButtons> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
        color: darkLightOne,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalcButton(
                  text: 'AC',
                  color: Colors.greenAccent,
                  func: () {
                    Provider.of<CoreData>(context, listen: false)
                        .onClickOperator('AC');
                  },
                ),
                CalcButton(
                  text: '+/-',
                  color: Colors.greenAccent,
                  func: () {
                    Provider.of<CoreData>(context, listen: false)
                        .onClickOperator('+/-');
                  },
                ),
                CalcButton(
                  text: '%',
                  color: Colors.greenAccent,
                  func: () {
                    Provider.of<CoreData>(context, listen: false)
                        .onClickOperator('%');
                  },
                ),
                CalcButton(
                  text: '/',
                  color: Colors.redAccent,
                  func: () {
                    Provider.of<CoreData>(context, listen: false)
                        .onClickOperator('/');
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalcButton(
                  text: '7',
                  func: () {
                    Provider.of<CoreData>(context, listen: false)
                        .onClickNumber(7);
                  },
                ),
                CalcButton(
                  text: '8',
                  func: () {
                    Provider.of<CoreData>(context, listen: false)
                        .onClickNumber(8);
                  },
                ),
                CalcButton(
                  text: '9',
                  func: () {
                    Provider.of<CoreData>(context, listen: false)
                        .onClickNumber(9);
                  },
                ),
                CalcButton(
                  text: 'X',
                  color: Colors.redAccent,
                  func: () {
                    Provider.of<CoreData>(context, listen: false)
                        .onClickOperator('*');
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalcButton(
                  text: '4',
                  func: () {
                    Provider.of<CoreData>(context, listen: false)
                        .onClickNumber(4);
                  },
                ),
                CalcButton(
                  text: '5',
                  func: () {
                    Provider.of<CoreData>(context, listen: false)
                        .onClickNumber(5);
                  },
                ),
                CalcButton(
                  text: '6',
                  func: () {
                    Provider.of<CoreData>(context, listen: false)
                        .onClickNumber(6);
                  },
                ),
                CalcButton(
                  text: '-',
                  color: Colors.redAccent,
                  func: () {
                    Provider.of<CoreData>(context, listen: false)
                        .onClickOperator('-');
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalcButton(
                  text: '1',
                  func: () {
                    Provider.of<CoreData>(context, listen: false)
                        .onClickNumber(1);
                  },
                ),
                CalcButton(
                  text: '2',
                  func: () {
                    Provider.of<CoreData>(context, listen: false)
                        .onClickNumber(2);
                  },
                ),
                CalcButton(
                  text: '3',
                  func: () {
                    Provider.of<CoreData>(context, listen: false)
                        .onClickNumber(3);
                  },
                ),
                CalcButton(
                  text: '+',
                  color: Colors.redAccent,
                  func: () {
                    Provider.of<CoreData>(context, listen: false)
                        .onClickOperator('+');
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalcButton(
                  icon: Icon(
                    Icons.replay_outlined,
                    color: Colors.white,
                  ),
                ),
                CalcButton(
                  text: '0',
                  func: () {
                    Provider.of<CoreData>(context, listen: false)
                        .onClickNumber(0);
                  },
                ),
                CalcButton(
                  text: '.',
                  func: () {
                    Provider.of<CoreData>(context, listen: false)
                        .onClickPoint();
                  },
                ),
                CalcButton(
                  text: '=',
                  color: Colors.redAccent,
                  func: () {
                    Provider.of<CoreData>(context, listen: false)
                        .onClickEqual();
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
