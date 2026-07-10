import 'package:flutter/material.dart';
// import 'package:psycholoist/feature/auth/screen/login_screen.dart';
import 'package:psycholoist/feature/auth/screen/otpverification_screen.dart';
import 'package:psycholoist/theme/text.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool isMobileSelected = true;
  bool isChacked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFCF3),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 50),
            Center(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage("assets/images/signup.jpg"),
                  ),

                  Positioned(
                    bottom: 5,
                    right: 5,
                    child: GestureDetector(
                      onTap: () {
                        print("Open Camera");
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.camera_alt,
                          color: Color(0xFF2D5356),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            CustomTextField(label: "Name", hintText: "Sanjana Bhattiya"),

            CustomTextField(label: "Number", hintText: "+91 9876543219"),

            CustomTextField(label: "Email", hintText: "sanjana@gmail.com"),

            CustomTextField(label: "Password", hintText: "njhuygftrs4xsd768"),

            const SizedBox(height: 10),
            CustomCheckbox(
              value: isChacked,

              onChanged: (value) {
                setState(() {
                  isChacked = value!;
                });
              },

              normalText:
                  "By joining, I declare that I have read and accept the",
              termsText: "Terms",
              privacyText: "Privacy Policy",
              onTermsTap: () {
                print("Terms Clicked");
              },

              onPrivacyTap: () {
                print("Privacy Policy Clicked");
              },
            ),

            const SizedBox(height: 20),
            
            CustomButton(text: "Sign Up",
             onTap: () {
               Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => OtpverificationScreen(),
                  ),
                );
             },
            ),

            const SizedBox(height: 120),
            Text(
              "Already have account? Sign In ",
              style: TextStyle(fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Color(0xFF4D525F),
              fontFamily: "AlegreyaSans-Bold"), 
            
            ),
          ],
        ),
      ),
    );
  }
}
