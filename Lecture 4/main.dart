import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_e/splash_screen.dart';

import 'login_screen.dart';
import 'onboarding_screen.dart';

void main(){

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    )
  );
}
