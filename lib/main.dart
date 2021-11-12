// @dart=2.9

import 'package:coffeshop/Home/home.dart';
import 'package:coffeshop/routes.dart';
import 'package:coffeshop/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: AppTheme.shadowColor,
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart Hotel',
      // home: SplashScreen(),
      // We use routeName so that we dont need to remember the name
      initialRoute: Home.routeName,
      routes: routes,
    );
  }
}
