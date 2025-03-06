import 'package:flutter/material.dart';
import '../core/widgets/sidebar_navigation.dart';
import '../main.dart';

class TeacherFeature extends StatelessWidget {
  const TeacherFeature({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Teacher Dashboard'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      drawer: SidebarNavigation(
        title: 'Teacher Menu',
        items: [
          NavigationItem(
            title: 'Dashboard',
            icon: Icons.dashboard,
            onTap: () {
              // Already on dashboard
            },
          ),
          NavigationItem(
            title: 'Classes',
            icon: Icons.class_,
            onTap: () {
              // Navigate to classes screen
            },
          ),
          NavigationItem(
            title: 'Students',
            icon: Icons.people,
            onTap: () {
              // Navigate to students screen
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
            Icon(Icons.school, size: 64),
            SizedBox(height: 16),
            Text(
              'Welcome to Teacher Dashboard',
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
