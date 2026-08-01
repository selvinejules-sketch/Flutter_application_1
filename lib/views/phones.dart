import 'package:flutter/material.dart';

class Phones extends StatefulWidget {
  const Phones({super.key});

  @override
  State<Phones> createState() => _PhonesState();
}

class _PhonesState extends State<Phones> {
  final List<Map<String, dynamic>> phones = [
    {
      "brand": "Samsung",
      "model": "Galaxy S24",
      "price": "KES 115,000",
      "stock": 30,
    },
    {
      "brand": "Apple",
      "model": "iPhone 15 Pro",
      "price": "KES 165,000",
      "stock": 20,
    },
    {
      "brand": "Tecno",
      "model": "Spark 20",
      "price": "KES 21,500",
      "stock": 25,
    },
    {
      "brand": "Infinix",
      "model": "Note 40",
      "price": "KES 32,000",
      "stock": 20,
    },
    {
      "brand": "Xiaomi",
      "model": "Redmi Note 13",
      "price": "KES 28,000",
      "stock": 25,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Phone Inventory"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Phone Inventory",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 5),

            const Text(
              "Manage all phones available in stock.",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 20),

            Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 28,
                      child: Icon(
                        Icons.inventory_2,
                        size: 30,
                      ),
                    ),

                    const SizedBox(width: 20),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Total Phones in Stock",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 8),

                        Text(
                          "120 Units",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Available Phones",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Expanded(
              child: ListView.builder(
                itemCount: phones.length,
                itemBuilder: (context, index) {
                  final phone = phones[index];

                  return Card(
                    elevation: 4,
                    margin: const EdgeInsets.only(bottom: 12),
                    child: ListTile(
                      leading: const CircleAvatar(
                        radius: 25,
                        child: Icon(Icons.phone_android),
                      ),

                      title: Text(
                        "${phone["brand"]} ${phone["model"]}",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),

                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Selling Price: ${phone["price"]}",
                            ),
                            Text(
                              "Available Stock: ${phone["stock"]} Units",
                            ),
                          ],
                        ),
                      ),

                      trailing: PopupMenuButton<String>(
                        onSelected: (value) {},
                        itemBuilder: (context) => [
                          const PopupMenuItem(
                            value: "view",
                            child: Text("View Details"),
                          ),
                          const PopupMenuItem(
                            value: "edit",
                            child: Text("Edit Phone"),
                          ),
                          const PopupMenuItem(
                            value: "delete",
                            child: Text("Delete Phone"),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Navigate to Add Phone Screen
        },
        icon: const Icon(Icons.add),
        label: const Text("Add Phone"),
      ),
    );
  }
}