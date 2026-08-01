import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/configs/colors.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;

TextEditingController usernameController = TextEditingController();
TextEditingController passwordController = TextEditingController();

var store = GetStorage();

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Color primaryColor = AppColors.primary;
  Color secondaryColor = AppColors.secondary;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("The Smart Way"),
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  width: 200,
                  height: 100,
                ),
              ],
            ),

            const SizedBox(height: 10),

            Center(
              child: Text(
                "Welcome to The Smart Way",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                ),
              ),
            ),

            Center(
              child: Text(
                "Phone Sales Management System",
                style: TextStyle(
                  fontSize: 15,
                  color: secondaryColor,
                ),
              ),
            ),

            const SizedBox(height: 30),

            Text(
              "Username",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: secondaryColor,
              ),
            ),

            const SizedBox(height: 5),

            TextField(
              controller: usernameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
                hintText: "Enter username",
              ),
            ),

            const SizedBox(height: 20),

            Text(
              "Password",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: secondaryColor,
              ),
            ),

            const SizedBox(height: 5),

            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
                hintText: "Enter password",
              ),
            ),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: () async {
                    var response = await http.get(
                      Uri.parse(
                        "http://localhost/flutter_application_1/login.php?username=${usernameController.text}&password=${passwordController.text}",
                      ),
                    );

                    var responseBody = jsonDecode(response.body);
                    int loggedIn = responseBody['success'];

                    if (loggedIn == 1) {
                      store.write("username", usernameController.text);
                      store.write("userid", responseBody['data'][0]['id']);
                      store.write(
                        "firstname",
                        responseBody['data'][0]['firstname'],
                      );

                      Get.snackbar(
                        "Login Successful",
                        "Login successful",
                      );

                      Get.toNamed("/home");
                    } else {
                      Get.snackbar(
                        "Login Failed",
                        "Invalid username or password",
                      );
                    }
                  },
                  color: primaryColor,
                  minWidth: 200,
                  height: 50,
                  child: const Text("Login"),
                ),
              ],
            ),

            const SizedBox(height: 20),

            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.toNamed("/register");
                  },
                  child: Text(
                    "Not registered? Sign Up",
                    style: TextStyle(
                      color: secondaryColor,
                    ),
                  ),
                ),

                Spacer(),
                GestureDetector(
                  onTap: () {
                    Get.toNamed("/forgotpassword");
                  },
                  child: Text(
                    "Forgot Password? Reset",
                    style: TextStyle(
                      color: secondaryColor,
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