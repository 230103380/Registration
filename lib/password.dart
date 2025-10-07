import 'package:assignment/ThirdPage.dart';
import 'package:assignment/custom_appbar.dart';
import 'package:assignment/custom_button.dart';
import 'package:assignment/custom_textfield.dart';
import 'package:flutter/material.dart';

class Password extends StatelessWidget {
  const Password({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: CustomAppBar(title: 'Reset Password'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              'Please fill in the field below to reset your current password.',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
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
              text: 'Confirm Reset Password',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ThirdPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
