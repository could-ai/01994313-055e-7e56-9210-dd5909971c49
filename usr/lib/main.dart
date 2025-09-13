import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Online Exam',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Row(
          children: [
            const FlutterLogo(),
            const SizedBox(width: 10),
            const Text(
              'Online Exam',
              style: TextStyle(
                color: Colors.indigo,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              // Navigate to Dashboard
            },
            child: const Text('Dashboard', style: TextStyle(color: Colors.indigo)),
          ),
          TextButton(
            onPressed: () {
              // Navigate to Profile
            },
            child: const Text('Profile', style: TextStyle(color: Colors.indigo)),
          ),
          TextButton(
            onPressed: () {
              // Navigate to Score
            },
            child: const Text('Score', style: TextStyle(color: Colors.indigo)),
          ),
          const SizedBox(width: 10),
          TextButton.icon(
            onPressed: () {
              // Handle Sign Out
            },
            icon: const Icon(Icons.logout, color: Colors.indigo),
            label: const Text('Sign Out', style: TextStyle(color: Colors.indigo)),
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: const BorderSide(color: Colors.indigo),
              ),
            ),
          ),
          const SizedBox(width: 20),
        ],
      ),
      body: const Center(
        child: Text(
          'Welcome to the Online Exam!',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
