import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.person_outline, size: 80, color: Colors.grey),
              SizedBox(height: 20),
              Text(
                'Profile Screen Coming Soon!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Here you will be able to manage your account details and settings.',
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
