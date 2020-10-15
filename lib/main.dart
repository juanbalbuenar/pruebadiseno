import 'package:flutter/material.dart';

import 'package:fractal_mobile_flutter/routes/routes.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fractal App',
      initialRoute: 'login',
      routes: appRoutes
    );
  }
}