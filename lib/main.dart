import 'package:flutter/material.dart';

void main() {
  runApp(DarkModeApp());
}

class DarkModeApp extends StatefulWidget {
  @override
  _DarkModeAppState createState() => _DarkModeAppState();
}

class _DarkModeAppState extends State<DarkModeApp> {
  bool isDarkMode = false;

  void toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dark Mode Toggle',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
      home: DarkModeHome(toggleTheme: toggleTheme, isDarkMode: isDarkMode),
    );
  }
}

class DarkModeHome extends StatelessWidget {
  final VoidCallback toggleTheme;
  final bool isDarkMode;

  DarkModeHome({required this.toggleTheme, required this.isDarkMode});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toggle Dark Mode'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: toggleTheme,
          child: Text(isDarkMode ? 'Switch to Light Mode' : 'Switch to Dark Mode'),
        ),
      ),
    );
  }
}
