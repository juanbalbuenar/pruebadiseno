import 'package:flutter/material.dart';

import 'package:fractal_mobile_flutter/pages/home_page.dart';
import 'package:fractal_mobile_flutter/pages/login_page.dart';



final Map<String, Widget Function(BuildContext)> appRoutes = {

  'login' : (BuildContext context) => LoginPage(),
  'home' : (BuildContext context) => HomePage()

};