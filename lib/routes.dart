import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/registration.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

var routes = [

  GetPage(name:"/login",page: () => LoginScreen()),
  GetPage(name:"/home",page: () => HomeScreen()),
  GetPage(name:"/register",page: () => RegistrationScreen()),

];