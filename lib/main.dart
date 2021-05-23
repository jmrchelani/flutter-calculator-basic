import 'package:basic_calculator/provider/core.dart';
import 'package:basic_calculator/screens/home.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:basic_calculator/colors.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSwatch(
          primaryColorDark: darkDarkOne,
        ),
      ),
      color: darkDarkOne,
      home: ChangeNotifierProvider(
        create: (context) => CoreData(),
        child: HomeScreen(),
      ),
    );
  }
}
