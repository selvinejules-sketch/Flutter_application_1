import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter_application_1/configs/colors.dart';
import 'package:http/http.dart' as http;

TextEditingController usernameController = TextEditingController();
TextEditingController passwordController = TextEditingController();
var store = GetStorage();

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    usernameController.text = store.read("username") ?? "";

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(Icons.phone_android),
            SizedBox(width: 8),
            Text('The Smart Way'),
          ],
        ),
        backgroundColor: primaryColor,
        foregroundColor: secondaryColor,
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  width: 200,
                  height: 200,
                  fit: BoxFit.fitWidth,
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

            TextField(
              controller: usernameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
                hintText: "Enter your username",
              ),
            ),

            Text(
              "Password",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: primaryColor,
              ),
            ),

            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
                hintText: "Enter your password",
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

                    // Print the response from PHP
                    print(response.body);

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
                        "Success",
                        "Login successful",
                      );

                      Get.toNamed("/home");

                    } else {

                      Get.snackbar(
                        "Error",
                        "Invalid username or password",
                      );

                    }
                  },
                  color: primaryColor,
                  textColor: secondaryColor,
                  height: 50,
                  minWidth: 200,
                  child: const Text("Login"),
                ),
              ],
            ),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.toNamed("/register");
                  },
                  child: const Text(
                    "Don't have an account? Sign up!",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),

                const Spacer(),

                const Text(
                  "Forgot your password?",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blueAccent,
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