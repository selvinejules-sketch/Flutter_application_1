import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  // Dashboard Statistics
  final int phonesInStock = 120;
  final int todaySales = 15;
  final int monthlySales = 420;
  final int annualSales = 5180;
  final int suppliers = 8;

  final String todayRevenue = "KES 250,000";
  final String monthlyRevenue = "KES 6,850,000";
  final String annualRevenue = "KES 81,400,000";

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
                fontSize: 26,
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

            // ===========================
            // Row 1
            // ===========================

            Row(
              children: [
                Expanded(
                  child: dashboardCard(
                    "Phones in Stock",
                    "$phonesInStock",
                    Icons.phone_android,
                    Colors.blue,
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: dashboardCard(
                    "Today's Sales",
                    "$todaySales",
                    Icons.shopping_cart,
                    Colors.green,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 15),

            // ===========================
            // Row 2
            // ===========================

            Row(
              children: [
                Expanded(
                  child: dashboardCard(
                    "Monthly Sales",
                    "$monthlySales",
                    Icons.calendar_month,
                    Colors.teal,
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: dashboardCard(
                    "Annual Sales",
                    "$annualSales",
                    Icons.bar_chart,
                    Colors.deepOrange,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 15),

            // ===========================
            // Revenue Cards
            // ===========================

            Row(
              children: [
                Expanded(
                  child: dashboardCard(
                    "Today's Revenue",
                    todayRevenue,
                    Icons.attach_money,
                    Colors.green,
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: dashboardCard(
                    "Monthly Revenue",
                    monthlyRevenue,
                    Icons.payments,
                    Colors.indigo,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 15),

            Row(
              children: [
                Expanded(
                  child: dashboardCard(
                    "Annual Revenue",
                    annualRevenue,
                    Icons.account_balance_wallet,
                    Colors.orange,
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: dashboardCard(
                    "Suppliers",
                    "$suppliers",
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
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            Card(
              elevation: 3,
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                  ),
                ),
                title: const Text(
                  "Samsung Galaxy S24 Sold",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: const Text(
                  "John Mwangi purchased a Samsung Galaxy S24\nToday • 09:10 AM",
                ),
              ),
            ),

            Card(
              elevation: 3,
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Icon(
                    Icons.inventory,
                    color: Colors.white,
                  ),
                ),
                title: const Text(
                  "New Stock Added",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: const Text(
                  "20 iPhone 15 Pro units added to inventory\nYesterday",
                ),
              ),
            ),

            Card(
              elevation: 3,
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.orange,
                  child: Icon(
                    Icons.trending_up,
                    color: Colors.white,
                  ),
                ),
                title: const Text(
                  "Monthly Target Progress",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: const Text(
                  "420 phones sold this month.\n85% of monthly target achieved.",
                ),
              ),
            ),

            Card(
              elevation: 3,
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.red,
                  child: Icon(
                    Icons.warning,
                    color: Colors.white,
                  ),
                ),
                title: const Text(
                  "Low Stock Alert",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: const Text(
                  "Tecno Spark 20 has only 3 units remaining.",
                ),
              ),
            ),

            Card(
              elevation: 3,
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.purple,
                  child: Icon(
                    Icons.emoji_events,
                    color: Colors.white,
                  ),
                ),
                title: const Text(
                  "Annual Performance",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "$annualSales phones sold this year generating $annualRevenue.",
                ),
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
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            CircleAvatar(
              radius: 24,
              backgroundColor: color.withOpacity(0.15),
              child: Icon(
                icon,
                color: color,
                size: 28,
              ),
            ),

            const SizedBox(height: 12),

            Text(
              value,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}