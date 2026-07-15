import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/registration.dart';
import 'package:flutter_application_1/home.dart';


void main() {
  runApp(const GlowAndBeautyHub());
}

class GlowAndBeautyHub extends StatefulWidget {
  const GlowAndBeautyHub({super.key});

  @override
  State<GlowAndBeautyHub> createState() => _GlowAndBeautyHubState();
}

class _GlowAndBeautyHubState extends State<GlowAndBeautyHub> {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Glow and Beauty Hub",

      // First page displayed when the application starts
      home: const LoginScreen(),

      // Navigation routes
      routes: {
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegistrationScreen(),
        '/home': (context) => const HomeScreen(),
      },

      // Theme similar to the GradingApp example
      theme: ThemeData(
        primarySwatch: Colors.pink,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.pink,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
      ),
    );
  }
}