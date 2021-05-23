import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class CoreData extends ChangeNotifier {
  String calculationOne = '';
  String calculationTwo = '';
  String oper = '';
  String result = '';
  bool isOperatorSet = false;
  bool isEqualPressed = false;

  bool nightMode = true;

  void onClickOperator(String op) {
    if (isEqualPressed) {
      isEqualPressed = false;
      calculationOne = result;
      calculationTwo = '';
      oper = '';
      result = '';
    }
    switch (op) {
      case 'AC':
        calculationOne = '';
        calculationTwo = '';
        oper = '';
        result = '';
        isOperatorSet = false;
        break;
      case '+':
        oper = '+';
        isOperatorSet = true;
        break;
      case '-':
        oper = '-';
        isOperatorSet = true;
        break;
      case '/':
        oper = '/';
        isOperatorSet = true;
        break;
      case '*':
        oper = 'X';
        isOperatorSet = true;
        break;
      case '%':
        oper = '%';
        isOperatorSet = true;
        break;
      case '+/-':
        break;
    }
    print(oper);
    notifyListeners();
  }

  void toggleNightMode(bool done) {
    nightMode = done;
    notifyListeners();
  }

  void onClickPoint() {
    if (isEqualPressed) {
    } else {
      bool isPointSet = false;
      if (!isOperatorSet) {
        if (calculationOne.contains('.')) isPointSet = true;
      } else {
        if (calculationTwo.contains('.')) isPointSet = true;
      }

      if (isPointSet) {
      } else {
        if (!isOperatorSet)
          calculationOne += '.';
        else
          calculationTwo += '.';
      }
    }
    notifyListeners();
  }

  void onClickEqual() {
    if (!isOperatorSet || calculationTwo.isEmpty || calculationOne.isEmpty) {
    } else {
      final double one = double.parse(calculationOne);
      final double two = double.parse(calculationTwo);
      double res;
      switch (oper) {
        case '+':
          res = one + two;
          break;
        case '-':
          res = one - two;
          break;
        case '/':
          res = one / two;
          break;
        case '%':
          res = one % two;
          break;
        case 'X':
          res = one * two;
          break;
        case '+/-':
          break;
      }
      if (res.toInt() == res)
        result = res.toInt().toString();
      else
        result = res.toStringAsFixed(6);

      isOperatorSet = false;
      isEqualPressed = true;
    }
    notifyListeners();
  }

  void onClickNumber(int num) {
    if (isEqualPressed) {
      isEqualPressed = false;
      calculationOne = '';
      calculationTwo = '';
      oper = '';
      result = '';
    }
    if (isOperatorSet) {
      if (calculationTwo == '' && num == 0) {
      } else
        calculationTwo += num.toString();
    } else {
      if (calculationOne == '' && num == 0) {
      } else {
        calculationOne += num.toString();
      }
    }
    notifyListeners();
  }
}
