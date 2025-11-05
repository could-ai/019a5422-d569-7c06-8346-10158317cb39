import 'package:flutter/material.dart';

class BrandKitScreen extends StatelessWidget {
  const BrandKitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Brand Kit Exporter'),
        centerTitle: true,
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.download_outlined, size: 80, color: Colors.grey),
              SizedBox(height: 20),
              Text(
                'Brand Kit Exporter Coming Soon!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'This feature will allow you to download a complete brand kit as a PDF.',
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
