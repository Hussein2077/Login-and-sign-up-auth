

import 'package:flutter/cupertino.dart';
import 'package:getx/animations.dart';
import 'package:getx/login_page.dart';

Map<String, Widget Function(BuildContext context)> routes ={
  '/loginPage':(context)=>const LoginPage(),
  'animation':(context)=>const Animations(),
};