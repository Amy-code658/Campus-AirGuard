import 'package:flutter/material.dart';

class LeaderboardScreen extends StatelessWidget {
  const LeaderboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> leaders = [
      {
        'name': 'Alex',
        'xp': 1250,
      },
      {
        'name': 'John',
        'xp': 1100,
      },
      {
        'name': 'Sarah',
        'xp': 980,
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFF4FFF4),

      appBar: AppBar(
        title: const Text("Leaderboard"),
        centerTitle: true,
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: leaders.length,

        itemBuilder: (context, index) {
          final user = leaders[index];

          return Card(
            margin: const EdgeInsets.only(bottom: 15),

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),

            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                child: Text(
                  "${index + 1}",
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              title: Text(
                user['name'],
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),

              trailing: Text(
                "${user['xp']} XP",
                style: const TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}