import 'package:flutter/material.dart';

class RewardsScreen extends StatelessWidget {
  const RewardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> rewards = [
      {
        'title': 'Campus Cafe Coupon',
        'cost': 200,
        'icon': Icons.local_cafe,
      },
      {
        'title': 'Eco Warrior Badge',
        'cost': 500,
        'icon': Icons.emoji_events,
      },
      {
        'title': 'Free Event Pass',
        'cost': 800,
        'icon': Icons.confirmation_number,
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFF4FFF4),

      appBar: AppBar(
        title: const Text("Rewards"),
        centerTitle: true,
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: rewards.length,
        itemBuilder: (context, index) {
          final reward = rewards[index];

          return Card(
            margin: const EdgeInsets.only(bottom: 15),

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),

            child: ListTile(
              contentPadding: const EdgeInsets.all(16),

              leading: CircleAvatar(
                radius: 28,
                child: Icon(
                  reward['icon'],
                ),
              ),

              title: Text(
                reward['title'],
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),

              subtitle: Text(
                "${reward['cost']} GreenXP",
              ),

              trailing: ElevatedButton(
                onPressed: () {},

                child: const Text("Redeem"),
              ),
            ),
          );
        },
      ),
    );
  }
}