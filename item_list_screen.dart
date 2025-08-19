import 'package:flutter/material.dart';

class ItemListScreen extends StatelessWidget {
  const ItemListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy data for demonstration
    final items = [
      {'name': 'Wallet', 'desc': 'Black leather wallet', 'type': 'Lost'},
      {'name': 'Umbrella', 'desc': 'Blue umbrella', 'type': 'Found'},
      {'name': 'Phone', 'desc': 'iPhone 13, silver', 'type': 'Lost'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Items List / Claim')),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: items.length,
        separatorBuilder: (_, __) => const SizedBox(height: 12),
        itemBuilder: (context, i) {
          final item = items[i];
          return Card(
            elevation: 3,
            child: ListTile(
              leading: Icon(
                item['type'] == 'Lost' ? Icons.report_gmailerrorred : Icons.add_box,
                color: item['type'] == 'Lost' ? Colors.redAccent : Colors.green,
              ),
              title: Text(item['name']!),
              subtitle: Text(item['desc']!),
              trailing: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Claim request sent for ${item['name']}!')),
                  );
                },
                child: const Text('Claim'),
              ),
            ),
          );
        },
      ),
    );
  }
}