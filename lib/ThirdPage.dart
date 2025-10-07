import 'package:assignment/SecondScreen.dart';
import 'package:assignment/custom_appbar.dart';
import 'package:assignment/custom_button.dart';
import 'package:assignment/custom_textfield.dart';
import 'package:assignment/reset.dart';
import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: CustomAppBar(title: 'Login'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              'Hello, Welcome back to My Courses',
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
            SizedBox(height: 10),

            Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Reset()),
                  );
                },
                child: const Text(
                  "Forgot password?",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            CustomButton(
              text: 'Login',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ThirdPage()),
                );
              },
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Didn’t not have an account?',
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
                        builder: (context) => const SecondScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    "Register",
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
