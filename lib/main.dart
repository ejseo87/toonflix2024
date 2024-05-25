import 'package:flutter/material.dart';
import 'package:toonflix2024/screens/home_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        cardColor: const Color(0xFFF4EDDB),
        primaryColor: const Color(0xFFE7626C),
        textTheme: const TextTheme(
          displaySmall: TextStyle(
            color: Color(0xFFF4EDDB),
            backgroundColor: Color(0xFF232B55),
          ),
          displayLarge: TextStyle(
            color: Color(0xFF232B55),
          ),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

class MyLargeTitle extends StatefulWidget {
  const MyLargeTitle({
    super.key,
  });

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

class _MyLargeTitleState extends State<MyLargeTitle> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'My Large Title',
      style: TextStyle(
        fontSize: 30,
        color: Theme.of(context).textTheme.titleLarge?.color,
      ),
    );
  }
}
