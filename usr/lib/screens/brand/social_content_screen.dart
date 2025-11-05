import 'package:flutter/material.dart';

class SocialContentScreen extends StatelessWidget {
  const SocialContentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Social Content Generator'),
        centerTitle: true,
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.campaign_outlined, size: 80, color: Colors.grey),
              SizedBox(height: 20),
              Text(
                'Social Content Generator Coming Soon!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'This feature will help you create engaging social media posts and ad copies in seconds.',
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
