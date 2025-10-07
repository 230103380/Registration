import 'package:assignment/ThirdPage.dart';
import 'package:assignment/custom_appbar.dart';
import 'package:assignment/custom_button.dart';
import 'package:assignment/custom_textfield.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: const CustomAppBar(title: 'Create Account'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              'Enjoy the various best courses we have, \nchoose the category according to your wishes.',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
            ),
            SizedBox(height: 40),
            const Text(
              'Email',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                fontFamily: 'Poppins',
              ),
            ),
            SizedBox(height: 10),
            CustomStackTextField(
              hintText: 'Enter your email',
              iconPath: 'assets/images/message.png',
            ),
            SizedBox(height: 40),
            const Text(
              'Phone Number',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                fontFamily: 'Poppins',
              ),
            ),
            SizedBox(height: 10),
            CustomStackTextField(
              hintText: 'Phone Number',
              iconPath: 'assets/images/phone.png',
            ),
            SizedBox(height: 40),
            const Text(
              'New Password',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                fontFamily: 'Poppins',
              ),
            ),
            SizedBox(height: 10),
            CustomStackTextField(
              hintText: 'New Password',
              iconPath: 'assets/images/lock.png',
              suffixIconPath: 'assets/images/hide.png', // глаз справа
              obscureText: true,
            ),
            SizedBox(height: 40),
            const Text(
              'Confirm Password',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                fontFamily: 'Poppins',
              ),
            ),
            SizedBox(height: 10),
            CustomStackTextField(
              hintText: 'Confirm Password',
              iconPath: 'assets/images/lock.png',
              suffixIconPath: 'assets/images/hide.png', // глаз справа
              obscureText: true,
            ),
            SizedBox(height: 40),
            CustomButton(
              text: 'Create Account',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondScreen()),
                );
              },
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Poppins',
                  ),
                ),
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
                    "Sign in",
                    style: TextStyle(
                      color: Color(0xffF2C94C),
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      fontFamily: 'Poppins',
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
