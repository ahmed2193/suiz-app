import 'package:flutter/material.dart';

import 'package:suiz/language.dart';



void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.red.shade900
    ),
    home:Language(),
    
  ));
}