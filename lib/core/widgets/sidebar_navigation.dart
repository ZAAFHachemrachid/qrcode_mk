import 'package:flutter/material.dart';

class SidebarNavigation extends StatelessWidget {
  final String title;
  final List<NavigationItem> items;

  const SidebarNavigation({
    super.key,
    required this.title,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(color: Theme.of(context).primaryColor),
            child: Text(
              title,
              style: const TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          ...items.map(
            (item) => ListTile(
              leading: Icon(item.icon),
              title: Text(item.title),
              onTap: () {
                // Close drawer
                Navigator.pop(context);
                // Execute the navigation
                item.onTap();
              },
            ),
          ),
        ],
      ),
    );
  }
}

class NavigationItem {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  NavigationItem({
    required this.title,
    required this.icon,
    required this.onTap,
  });
}
