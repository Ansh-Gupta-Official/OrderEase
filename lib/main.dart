import 'package:flutter/material.dart';
import 'package:orderease/Features/Welcome/welcome_screen.dart';
import 'package:orderease/Provider/cart_provider.dart';
import 'package:orderease/Provider/user_provider.dart';
import 'package:provider/provider.dart';



import 'Features/Home/home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (context)=>CartProvider(),),
      ChangeNotifierProvider(
        create: (context)=>UserProvider(),)
    ],
      child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home:WelcomeScreen()
      ),
    );
  }
}
