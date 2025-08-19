import 'package:flutter/material.dart';

class AdminScreen extends StatelessWidget {
  const AdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy data for demonstration
    final reports = [
      {'user': 'Alice', 'item': 'Wallet', 'status': 'Pending'},
      {'user': 'Bob', 'item': 'Umbrella', 'status': 'Claimed'},
      {'user': 'Charlie', 'item': 'Phone', 'status': 'Pending'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Admin Panel')),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: reports.length,
        separatorBuilder: (_, __) => const SizedBox(height: 12),
        itemBuilder: (context, i) {
          final report = reports[i];
          return Card(
            child: ListTile(
              leading: const Icon(Icons.person),
              title: Text('${report['user']} - ${report['item']}'),
              subtitle: Text('Status: ${report['status']}'),
              trailing: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Status updated for ${report['item']}!')),
                  );
                },
                child: const Text('Update'),
              ),
            ),
          );
        },
      ),
    );
  }
}