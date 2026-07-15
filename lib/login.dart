import 'package:flutter/material.dart';
import 'package:flutter_application_1/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: const Text("Glow and Beauty Hub"),
        backgroundColor: primaryColor,
        foregroundColor: secondaryColor,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.face_retouching_natural),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "images/logo.png",
                  height: 180,
                  width: 180,
                  fit: BoxFit.cover,
                ),
              ],
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
                prefixIcon: Icon(Icons.person),
                hintText: "Enter your username",
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
                hintText: "Enter your password",
              ),
            ),

            const SizedBox(height: 25),

            Center(
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/home');
                },
                color: primaryColor,
                textColor: secondaryColor,
                height: 50,
                minWidth: 220,
                child: const Text(
                  "LOGIN",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/register');
                  },
                  child: Text(
                    "Not registered? Sign Up!",
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 15,
                    ),
                  ),
                ),

                const Spacer(),

                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}