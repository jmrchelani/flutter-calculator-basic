import 'package:basic_calculator/provider/core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CalculationArea extends StatefulWidget {
  @override
  _CalculationAreaState createState() => _CalculationAreaState();
}

class _CalculationAreaState extends State<CalculationArea> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    Provider.of<CoreData>(context).calculationOne,
                    style: TextStyle(
                      color: (Provider.of<CoreData>(context).nightMode)
                          ? Colors.white
                          : Colors.black,
                      fontSize: 25,
                    ),
                    // textAlign: TextAlign.end,
                  ),
                  Text('  '),
                  Text(
                    Provider.of<CoreData>(context).oper,
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 25,
                    ),
                    // textAlign: TextAlign.end,
                  ),
                  Text('  '),
                  Text(
                    Provider.of<CoreData>(context).calculationTwo,
                    style: TextStyle(
                      color: (Provider.of<CoreData>(context).nightMode)
                          ? Colors.white
                          : Colors.black,
                      fontSize: 25,
                    ),
                    // textAlign: TextAlign.end,
                  )
                ],
              ),
              // Text(
              //   calculationOne + ' ' + op + ' ' + calculationTwo,
              //   style: TextStyle(
              //     color: Colors.white,
              //     fontSize: 25,
              //   ),
              //   textAlign: TextAlign.end,
              // ),
              SizedBox(
                height: 15,
              ),
              Text(
                Provider.of<CoreData>(context).result,
                style: TextStyle(
                  color: (Provider.of<CoreData>(context).nightMode)
                      ? Colors.white
                      : Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
