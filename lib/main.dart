import 'package:flutter/material.dart';
import 'package:basicdesigns/src/pages/basic_page.dart';
import 'package:basicdesigns/src/pages/scroll_page.dart';
import 'package:basicdesigns/src/pages/gradient_page.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // Set color white to StatusBar
    SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.white,
    ));


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños Flutter',
      initialRoute: 'gradient',
      routes: {
        '/'       : (BuildContext context) => BasicPage(),
        'scroll'  : (BuildContext context) => ScrollPage(),
        'gradient': (BuildContext context) => GradientPage(),
      },
    );
  }
}
