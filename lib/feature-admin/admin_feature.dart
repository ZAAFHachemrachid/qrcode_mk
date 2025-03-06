import 'package:flutter/material.dart';
import '../core/widgets/sidebar_navigation.dart';
import '../main.dart';

class AdminFeature extends StatelessWidget {
  const AdminFeature({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Dashboard'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      drawer: SidebarNavigation(
        title: 'Admin Menu',
        items: [
          NavigationItem(
            title: 'Dashboard',
            icon: Icons.dashboard,
            onTap: () {
              // Already on dashboard
            },
          ),
          NavigationItem(
            title: 'Users',
            icon: Icons.people,
            onTap: () {
              // Navigate to users screen
            },
          ),
          NavigationItem(
            title: 'Settings',
            icon: Icons.settings,
            onTap: () {
              // Navigate to settings screen
            },
          ),
          NavigationItem(
            title: 'Back to Role Selection',
            icon: Icons.exit_to_app,
            onTap: () {
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (_) => const RoleSelectionScreen()),
                (route) => false,
              );
            },
          ),
        ],
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.admin_panel_settings, size: 64),
            SizedBox(height: 16),
            Text(
              'Welcome to Admin Dashboard',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Use the sidebar menu to navigate',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
