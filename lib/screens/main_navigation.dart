import 'package:flutter/material.dart';

class MainNavigation extends StatelessWidget {
  const MainNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lumina LMS'),
      ),
      body: const Center(
        child: Text('Welcome to Lumina LMS!'),
      ),
    );
  }
}