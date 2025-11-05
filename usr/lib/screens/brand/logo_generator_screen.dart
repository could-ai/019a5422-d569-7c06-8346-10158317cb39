import 'package:flutter/material.dart';

class LogoGeneratorScreen extends StatelessWidget {
  const LogoGeneratorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Logo Generator'),
        centerTitle: true,
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.palette_outlined, size: 80, color: Colors.grey),
              SizedBox(height: 20),
              Text(
                'Logo Generator Coming Soon!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'This feature will allow you to generate stunning logos with AI.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
