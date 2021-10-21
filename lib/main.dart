import 'package:flutter/material.dart';
import 'package:pet_care_app/screen/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PetCare App',
      home: LoginScreen(),
    );
  }
}
