import 'package:flutter/material.dart';

class Suppliers extends StatefulWidget {
  const Suppliers({super.key});

  @override
  State<Suppliers> createState() => _SuppliersState();
}

class _SuppliersState extends State<Suppliers> {
  final List<Map<String, dynamic>> suppliers = [
    {
      "name": "Samsung Kenya Ltd",
      "contact": "0700 111 111",
      "location": "Nairobi",
      "phones": "Samsung Phones",
    },
    {
      "name": "Apple East Africa",
      "contact": "0700 222 222",
      "location": "Nairobi",
      "phones": "iPhones",
    },
    {
      "name": "Tecno Mobile Kenya",
      "contact": "0700 333 333",
      "location": "Mombasa",
      "phones": "Tecno Phones",
    },
    {
      "name": "Infinix Kenya",
      "contact": "0700 444 444",
      "location": "Nakuru",
      "phones": "Infinix Phones",
    },
    {
      "name": "Xiaomi Kenya",
      "contact": "0700 555 555",
      "location": "Kisumu",
      "phones": "Redmi Phones",
    },
    {
      "name": "Oppo Kenya",
      "contact": "0700 666 666",
      "location": "Nairobi",
      "phones": "Oppo Phones",
    },
    {
      "name": "Vivo Kenya",
      "contact": "0700 777 777",
      "location": "Eldoret",
      "phones": "Vivo Phones",
    },
    {
      "name": "Realme Kenya",
      "contact": "0700 888 888",
      "location": "Thika",
      "phones": "Realme Phones",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Suppliers"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Phone Suppliers",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 5),

            const Text(
              "Manage all suppliers providing phones to the business.",
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
                        Icons.local_shipping,
                        size: 30,
                      ),
                    ),

                    const SizedBox(width: 20),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Total Suppliers",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 8),

                        Text(
                          "8 Suppliers",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple,
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
              "Supplier List",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Expanded(
              child: ListView.builder(
                itemCount: suppliers.length,
                itemBuilder: (context, index) {
                  final supplier = suppliers[index];

                  return Card(
                    elevation: 4,
                    margin: const EdgeInsets.only(bottom: 12),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.purple.shade100,
                        child: const Icon(
                          Icons.business,
                          color: Colors.purple,
                        ),
                      ),
                      title: Text(
                        supplier["name"],
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Contact: ${supplier["contact"]}"),
                            Text("Location: ${supplier["location"]}"),
                            Text("Supplies: ${supplier["phones"]}"),
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
                            child: Text("Edit Supplier"),
                          ),
                          const PopupMenuItem(
                            value: "delete",
                            child: Text("Delete Supplier"),
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
          // Navigate to Add Supplier screen
        },
        icon: const Icon(Icons.add_business),
        label: const Text("Add Supplier"),
      ),
    );
  }
}