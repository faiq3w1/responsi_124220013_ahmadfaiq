import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const AmiiboApp());
}

class AmiiboApp extends StatelessWidget {
  const AmiiboApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nitendo Amiibo App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
    );
  }
}
