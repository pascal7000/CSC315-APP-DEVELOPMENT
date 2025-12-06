import 'package:flutter/material.dart';
import 'package:myapp/pages/Fppage.dart';

void main() {
  runApp(const myapp());
}

// ignore: camel_case_types
class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    //my code start here
    return MaterialApp(
      title: 'Student Portal',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 56, 161, 231),
        ),
        useMaterial3: true,
      ),
      home: Fppage(),
    );
  }
}
