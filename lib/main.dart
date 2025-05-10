import 'package:atbjobsapp/config/theme/app_themes.dart';
import 'package:atbjobsapp/feature/details/screen/details.dart';
import 'package:atbjobsapp/feature/order/presentation/screen/order.dart';
import 'package:atbjobsapp/feature/summary/screen/login.dart';
import 'package:atbjobsapp/feature/welcome/screen/signup_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'di.dart';

void main() async{
  
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    scrollBehavior: ScrollConfiguration.of(context).copyWith(
            overscroll: false,
        ),
    debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      initialRoute: '/',
      onGenerateRoute: (settings) {
      switch (settings.name) {
        case '/':
          return MaterialPageRoute(builder: (_) =>  Welcome());
        case '/details':
          return MaterialPageRoute(builder: (_) => const Details());
        case '/order':
          final calories = settings.arguments as double; // any type
          return MaterialPageRoute(builder: (_) => Order(calories: calories));
        case '/orderSummary':
          return MaterialPageRoute(
            builder: (_) => OrderSummary(),
          );
        default:
          return null;
      }
    },
    );
  }
}