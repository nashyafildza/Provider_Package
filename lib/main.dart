import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/counter.dart'; // Import model Counter
import 'screens/counter_screen.dart'; // Import UI CounterScreen

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Counter(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stylish Counter App',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const CounterScreen(),
    );
  }
}
