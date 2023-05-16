import 'package:flutter/material.dart';
import 'package:instagram/pages/edit_profile.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: EditProfile(),
    );
  }
}