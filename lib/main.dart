import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'feature-admin/admin_feature.dart';
import 'feature-teacher/teacher_feature.dart';
import 'feature-student/student_feature.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QR Code Management',
      theme: FlexThemeData.light(scheme: FlexScheme.green, useMaterial3: true),
      home: const RoleSelectionScreen(),
    );
  }
}

class RoleSelectionScreen extends StatelessWidget {
  const RoleSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Your Role'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildRoleButton(
              context,
              'Admin',
              Icons.admin_panel_settings,
              () => _navigateToFeature(context, 'admin'),
            ),
            const SizedBox(height: 20),
            _buildRoleButton(
              context,
              'Teacher',
              Icons.school,
              () => _navigateToFeature(context, 'teacher'),
            ),
            const SizedBox(height: 20),
            _buildRoleButton(
              context,
              'Student',
              Icons.person,
              () => _navigateToFeature(context, 'student'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRoleButton(
    BuildContext context,
    String title,
    IconData icon,
    VoidCallback onPressed,
  ) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon, size: 24),
      label: Text(title, style: const TextStyle(fontSize: 18)),
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        minimumSize: const Size(200, 50),
      ),
    );
  }

  void _navigateToFeature(BuildContext context, String role) {
    Widget screen;
    switch (role) {
      case 'admin':
        screen = const AdminFeature();
        break;
      case 'teacher':
        screen = const TeacherFeature();
        break;
      case 'student':
        screen = const StudentFeature();
        break;
      default:
        return;
    }

    Navigator.push(context, MaterialPageRoute(builder: (_) => screen));
  }
}
