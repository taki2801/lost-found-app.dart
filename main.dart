import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/register_screen.dart';
import 'screens/dashboard_screen.dart';
import 'screens/report_lost_screen.dart';
import 'screens/report_found_screen.dart';
import 'screens/item_list_screen.dart';
import 'screens/admin_screen.dart';

void main() {
  runApp(const LostAndFoundApp());
}

class LostAndFoundApp extends StatelessWidget {
  const LostAndFoundApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lost & Found',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        useMaterial3: true,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/dashboard': (context) => const DashboardScreen(),
        '/report_lost': (context) => const ReportLostScreen(),
        '/report_found': (context) => const ReportFoundScreen(),
        '/items': (context) => const ItemListScreen(),
        '/admin': (context) => const AdminScreen(),
      },
    );
  }
}