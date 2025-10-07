import 'package:assignment/ThirdPage.dart';
import 'package:assignment/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:assignment/SecondScreen.dart'; // твой второй экран

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6FBFA),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 160, right: 23, bottom: 23),
            child: Image(image: AssetImage('assets/images/bg.png')),
          ),
          const SizedBox(height: 20),
          Container(
            height: 300,
            width: double.infinity,
            padding: const EdgeInsets.all(20), // делаем внутренние отступы
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Text(
                    'Welcome To MyCourses',
                    style: TextStyle(fontFamily: 'Poppins', fontSize: 20),
                  ),
                ),
                const SizedBox(height: 15),
                const Text(
                  'Enjoy the various best courses we have, choose\n'
                  'the category according to your wishes.',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Poppins',
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),
                const Image(
                  image: AssetImage('assets/images/tochki.png'),
                  width: 40,
                  height: 15,
                ),
                const SizedBox(height: 20),

                CustomButton(
                  text: 'Mother fucker',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SecondScreen(),
                      ),
                    );
                  },
                ),
                SizedBox(height: 10),

                // InkWell (контейнер-кнопка) → переход на ThirdPage
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ThirdPage(),
                      ),
                    );
                  },
                  child: const Text(
                    "Already Have an Account",
                    style: TextStyle(
                      color: Color(0xffF2C94C),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Третий экран
