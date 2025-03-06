import 'package:flutter/material.dart';
import '../core/widgets/sidebar_navigation.dart';
import '../main.dart';

class StudentFeature extends StatelessWidget {
  const StudentFeature({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Dashboard'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      drawer: SidebarNavigation(
        title: 'Student Menu',
        items: [
          NavigationItem(
            title: 'Dashboard',
            icon: Icons.dashboard,
            onTap: () {
              // Already on dashboard
            },
          ),
          NavigationItem(
            title: 'Courses',
            icon: Icons.book,
            onTap: () {
              // Navigate to courses screen
            },
          ),
          NavigationItem(
            title: 'Profile',
            icon: Icons.person,
            onTap: () {
              // Navigate to profile screen
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
            Icon(Icons.person, size: 64),
            SizedBox(height: 16),
            Text(
              'Welcome to Student Dashboard',
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
