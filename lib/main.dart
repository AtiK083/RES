import 'package:flutter/material.dart';
import 'package:responsiveui1/presentation/screens/home_screen.dart';

void main() {
  runApp(const RSAPP());
}

class RSAPP extends StatelessWidget {
  const RSAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}



