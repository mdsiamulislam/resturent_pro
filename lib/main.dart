import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resturent_pro/screen/splash_screen.dart';

void main() {
  runApp(ResturentPro());
}

class ResturentPro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: splash_screen());
  }
}
