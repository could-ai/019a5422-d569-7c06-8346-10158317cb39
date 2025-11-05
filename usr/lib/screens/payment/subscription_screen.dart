import 'package:flutter/material.dart';

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manage Subscription'),
        centerTitle: true,
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.workspace_premium_outlined, size: 80, color: Colors.grey),
              SizedBox(height: 20),
              Text(
                'Subscription Management Coming Soon!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Here you will be able to view and manage your subscription plans.',
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
