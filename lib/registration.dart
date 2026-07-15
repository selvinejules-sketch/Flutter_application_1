import 'package:flutter/material.dart';
import 'package:flutter_application_1/colors.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: const Text("Register"),
        backgroundColor: primaryColor,
        foregroundColor: secondaryColor,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person_add),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  "images/logo.png",
                  height: 120,
                  width: 120,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(height: 20),

              Text(
                "Full Name",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: primaryColor,
                ),
              ),

              const SizedBox(height: 5),

              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                  hintText: "Enter your full name",
                ),
              ),

              const SizedBox(height: 20),

              Text(
                "Email Address",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: primaryColor,
                ),
              ),

              const SizedBox(height: 5),

              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                  hintText: "Enter your email",
                ),
              ),

              const SizedBox(height: 20),

              Text(
                "Username",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: primaryColor,
                ),
              ),

              const SizedBox(height: 5),

              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.account_circle),
                  hintText: "Choose a username",
                ),
              ),

              const SizedBox(height: 20),

              Text(
                "Password",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: primaryColor,
                ),
              ),

              const SizedBox(height: 5),

              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                  hintText: "Create a password",
                ),
              ),

              const SizedBox(height: 30),

              Center(
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/login');
                  },
                  color: primaryColor,
                  textColor: secondaryColor,
                  height: 50,
                  minWidth: 220,
                  child: const Text(
                    "REGISTER",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Already have an account? Login",
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}