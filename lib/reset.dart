import 'package:assignment/custom_appbar.dart';
import 'package:assignment/custom_button.dart';
import 'package:assignment/custom_textfield.dart';
import 'package:assignment/password.dart';
import 'package:flutter/material.dart';

class Reset extends StatelessWidget {
  const Reset({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: CustomAppBar(title: 'Reset Password'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            CustomButton(
              text: 'Send me a New Password',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Password()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
