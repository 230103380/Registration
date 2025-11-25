import 'package:assignment/home.dart';
import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5FAF9),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Image(image: AssetImage('assets/images/back.png'))],
            ),
            Positioned(
              bottom: 380,
              child: SizedBox(
                width: 108,
                height: 108,
                child: Image(image: AssetImage('assets/images/Emprower.png')),
              ),
            ),

            Positioned(
              bottom: 340,
              child: Text(
                'EmpowerED',
                style: TextStyle(fontFamily: 'Poppins', fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
