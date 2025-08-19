import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lost & Found Dashboard'),
        actions: [
          IconButton(
            icon: const Icon(Icons.admin_panel_settings),
            onPressed: () {
              Navigator.pushNamed(context, '/admin');
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 24,
          mainAxisSpacing: 24,
          children: [
            _DashboardTile(
              icon: Icons.report_gmailerrorred,
              label: 'Report Lost Item',
              color: Colors.redAccent,
              onTap: () => Navigator.pushNamed(context, '/report_lost'),
            ),
            _DashboardTile(
              icon: Icons.add_box,
              label: 'Report Found Item',
              color: Colors.green,
              onTap: () => Navigator.pushNamed(context, '/report_found'),
            ),
            _DashboardTile(
              icon: Icons.list_alt,
              label: 'View Items / Claim',
              color: Colors.blue,
              onTap: () => Navigator.pushNamed(context, '/items'),
            ),
            _DashboardTile(
              icon: Icons.logout,
              label: 'Logout',
              color: Colors.grey,
              onTap: () => Navigator.pushReplacementNamed(context, '/login'),
            ),
          ],
        ),
      ),
    );
  }
}

class _DashboardTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;
  final VoidCallback onTap;

  const _DashboardTile({
    required this.icon,
    required this.label,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color.withOpacity(0.1),
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 48, color: color),
              const SizedBox(height: 12),
              Text(label, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: color)),
            ],
          ),
        ),
      ),
    );
  }
}