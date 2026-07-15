import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<String> _pages = [
    "Dashboard",
    "Products",
    "Profile",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Glow and Beauty Hub'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              "Welcome to ${_pages[_selectedIndex]}",
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              "This is the ${_pages[_selectedIndex]} screen.",
              style: const TextStyle(fontSize: 16),
            ),

            const Spacer(),

            Card(
              child: ListTile(
                leading: const Icon(Icons.dashboard),
                title: const Text('Dashboard'),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  setState(() {
                    _selectedIndex = 0;
                  });
                },
              ),
            ),

            const SizedBox(height: 10),

            Card(
              child: ListTile(
                leading: const Icon(Icons.shopping_bag),
                title: const Text('Products'),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  setState(() {
                    _selectedIndex = 1;
                  });
                },
              ),
            ),

            const SizedBox(height: 10),

            Card(
              child: ListTile(
                leading: const Icon(Icons.person),
                title: const Text('Profile'),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  setState(() {
                    _selectedIndex = 2;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}