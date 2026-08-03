import 'package:flutter/material.dart';

class Sales extends StatefulWidget {
  const Sales({super.key});

  @override
  State<Sales> createState() => _SalesState();
}

class _SalesState extends State<Sales> {
  final List<Map<String, dynamic>> sales = [
    {
      "customer": "John Mwangi",
      "phone": "Samsung Galaxy S24",
      "amount": "KES 115,000",
      "date": "Today 09:10 AM"
    },
    {
      "customer": "Mary Wanjiku",
      "phone": "Tecno Spark 20",
      "amount": "KES 21,500",
      "date": "Today 09:45 AM"
    },
    {
      "customer": "Brian Otieno",
      "phone": "Redmi Note 13",
      "amount": "KES 28,000",
      "date": "Today 10:20 AM"
    },
    {
      "customer": "Sarah Akinyi",
      "phone": "Infinix Note 40",
      "amount": "KES 32,000",
      "date": "Today 10:50 AM"
    },
    {
      "customer": "Peter Kamau",
      "phone": "iPhone 15 Pro",
      "amount": "KES 165,000",
      "date": "Today 11:30 AM"
    },
    {
      "customer": "Jane Njeri",
      "phone": "Samsung Galaxy S24",
      "amount": "KES 115,000",
      "date": "Today 12:15 PM"
    },
    {
      "customer": "Kevin Kiptoo",
      "phone": "Tecno Spark 20",
      "amount": "KES 21,500",
      "date": "Today 01:00 PM"
    },
    {
      "customer": "Faith Chebet",
      "phone": "Redmi Note 13",
      "amount": "KES 28,000",
      "date": "Today 01:45 PM"
    },
    {
      "customer": "Daniel Ouma",
      "phone": "Samsung Galaxy S24",
      "amount": "KES 115,000",
      "date": "Today 02:20 PM"
    },
    {
      "customer": "Grace Atieno",
      "phone": "Infinix Note 40",
      "amount": "KES 32,000",
      "date": "Today 03:10 PM"
    },
    {
      "customer": "Joseph Kariuki",
      "phone": "Tecno Spark 20",
      "amount": "KES 21,500",
      "date": "Today 03:45 PM"
    },
    {
      "customer": "Mercy Njeri",
      "phone": "Samsung Galaxy S24",
      "amount": "KES 115,000",
      "date": "Today 04:00 PM"
    },
    {
      "customer": "Eric Mutua",
      "phone": "Redmi Note 13",
      "amount": "KES 28,000",
      "date": "Today 04:25 PM"
    },
    {
      "customer": "Lucy Wambui",
      "phone": "Infinix Note 40",
      "amount": "KES 32,000",
      "date": "Today 04:40 PM"
    },
    {
      "customer": "Paul Kimani",
      "phone": "Tecno Spark 20",
      "amount": "KES 21,500",
      "date": "Today 05:00 PM"
    },
  ];

  final int todaySales = 15;
  final int monthlySales = 420;
  final int annualSales = 5180;

  final String todayRevenue = "KES 250,000";
  final String monthlyRevenue = "KES 6,850,000";
  final String annualRevenue = "KES 81,400,000";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sales"),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const Text(
                "Sales Overview",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 5),

              const Text(
                "Track today's, monthly and annual phone sales.",
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
                        backgroundColor: Colors.green,

                        child: Icon(
                          Icons.point_of_sale,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),

                      const SizedBox(width: 20),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          const Text(
                            "Today's Sales",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 8),

                          Text(
                            "$todaySales Sales",
                            style: const TextStyle(
                              fontSize: 25,
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 8),

                          Text(
                            "Revenue : $todayRevenue",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),
                            Row(
                children: [

                  Expanded(
                    child: Card(
                      elevation: 4,

                      child: Padding(
                        padding: const EdgeInsets.all(15),

                        child: Column(
                          children: [

                            const Icon(
                              Icons.calendar_month,
                              size: 40,
                              color: Colors.blue,
                            ),

                            const SizedBox(height: 10),

                            const Text(
                              "Monthly Sales",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),

                            const SizedBox(height: 8),

                            Text(
                              "$monthlySales",
                              style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),

                            const SizedBox(height: 5),

                            Text(
                              monthlyRevenue,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 12),

                  Expanded(
                    child: Card(
                      elevation: 4,

                      child: Padding(
                        padding: const EdgeInsets.all(15),

                        child: Column(
                          children: [

                            const Icon(
                              Icons.bar_chart,
                              size: 40,
                              color: Colors.orange,
                            ),

                            const SizedBox(height: 10),

                            const Text(
                              "Annual Sales",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),

                            const SizedBox(height: 8),

                            Text(
                              "$annualSales",
                              style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.orange,
                              ),
                            ),

                            const SizedBox(height: 5),

                            Text(
                              annualRevenue,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 25),

              const Text(
                "Recent Sales",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),

                itemCount: sales.length,

                itemBuilder: (context, index) {

                  final sale = sales[index];

                  return Card(
                    elevation: 3,
                    margin: const EdgeInsets.only(bottom: 10),

                    child: ListTile(

                      leading: const CircleAvatar(
                        child: Icon(Icons.shopping_cart),
                      ),

                      title: Text(
                        sale["phone"],
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      subtitle: Text(
                        "${sale["customer"]}\n${sale["date"]}",
                      ),

                      trailing: Text(
                        sale["amount"],
                        style: const TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  );
                },
              ),
                          ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Add New Sale feature coming soon."),
            ),
          );
        },
        backgroundColor: Colors.green,
        icon: const Icon(Icons.add),
        label: const Text("New Sale"),
      ),
    );
  }
}