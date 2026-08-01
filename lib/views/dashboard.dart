import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              "Welcome to The Smart Way",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              "Phone Sales Management System",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 25),

            Row(
              children: [
                Expanded(
                  child: dashboardCard(
                    "Phones in Stock",
                    "120",
                    Icons.phone_android,
                    Colors.blue,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: dashboardCard(
                    "Today's Sales",
                    "15",
                    Icons.shopping_cart,
                    Colors.green,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 15),

            Row(
              children: [
                Expanded(
                  child: dashboardCard(
                    "Revenue",
                    "KES 250,000",
                    Icons.attach_money,
                    Colors.orange,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: dashboardCard(
                    "Suppliers",
                    "8",
                    Icons.local_shipping,
                    Colors.purple,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            const Text(
              "Recent Activities",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            Card(
              child: ListTile(
                leading: const Icon(Icons.check_circle, color: Colors.green),
                title: const Text("Samsung Galaxy S24 sold"),
                subtitle: const Text("Today - 10:30 AM"),
              ),
            ),

            Card(
              child: ListTile(
                leading: const Icon(Icons.add_box, color: Colors.blue),
                title: const Text("20 iPhone 15 units added"),
                subtitle: const Text("Yesterday"),
              ),
            ),

            Card(
              child: ListTile(
                leading: const Icon(Icons.warning, color: Colors.red),
                title: const Text("Tecno Spark stock is low"),
                subtitle: const Text("Only 3 units remaining"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget dashboardCard(
      String title,
      String value,
      IconData icon,
      Color color,
      ) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Icon(
              icon,
              size: 40,
              color: color,
            ),
            const SizedBox(height: 10),
            Text(
              value,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              title,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}