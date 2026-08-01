## main
import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/routes.dart';
import 'package:flutter_application_1/views/login.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const TheSmartWayApp());
}

class TheSmartWayApp extends StatefulWidget {
  const TheSmartWayApp({super.key});

  @override
  State<TheSmartWayApp> createState() => _TheSmartWayAppState();
}

class _TheSmartWayAppState extends State<TheSmartWayApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "The Smart Way",
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
            initialRoute: "/login",
      getPages: routes,
    );
  }
}

## login
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _handleLogin() {
    final username = _usernameController.text.trim();
    final password = _passwordController.text;

    if (username.isEmpty) {
      Get.snackbar("Missing Info", "Username is required");
      return;
    }
    if (password.isEmpty) {
      Get.snackbar("Missing Info", "Password is required");
      return;
    }

    // TODO: validate credentials against your auth/backend service here.
    Get.toNamed("/home");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("The Smart App"),
        backgroundColor: Colors.cyan,
        foregroundColor: Colors.white,
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
          IconButton(onPressed: () {}, icon: Icon(Icons.logout)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/whatsapp image 2024-07-12 at 19.14.10_2ef949cf.jpg",
                  width: 200,
                  height: 200,
                ),
              ],
            ),
            Text(
              "Username:",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: Colors.deepOrangeAccent,
              ),
            ),
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
                hintText: "Enter your username",
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Password:",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrangeAccent,
              ),
            ),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
                hintText: "Enter your password",
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: _handleLogin,
                  color: Colors.cyan,
                  height: 50,
                  minWidth: 200,
                  child: Text("Login"),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  child: Text(
                    "Not registered? Sign Up",
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                  onTap: () {
                    Get.toNamed("/signup");
                  },
                ),
                Spacer(),
                GestureDetector(
                  child: Text(
                    "Forgot Password? Reset",
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                  onTap: () {
                    Get.toNamed("/forgot-password");
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

