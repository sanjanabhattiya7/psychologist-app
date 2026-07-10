import 'package:flutter/material.dart';
import 'package:psycholoist/feature/auth/screen/emailverification_screen.dart';
import 'package:psycholoist/feature/auth/screen/signup_screen.dart';
import 'package:psycholoist/theme/text.dart';
// import 'package:psycholoist/feature/auth/screen/email_screen.dart';
import 'package:psycholoist/feature/auth/screen/login_screen.dart';
import 'package:psycholoist/feature/auth/screen/forgetpassword_screen.dart';


class EmailScreen extends StatefulWidget {
  const EmailScreen({super.key});

  @override
  State<EmailScreen> createState() => _EmailScreenState();
}

class _EmailScreenState extends State<EmailScreen> {
  bool isMobileSelected = true;
  bool isChacked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFCF3),
      body: SafeArea(
        child:Column(
          children: [
            SizedBox(height: 40),
            Center(
              child: Container(
                height: 40,
                width: 150,
                padding: const EdgeInsets.all(0.4),
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Color.fromARGB(255, 117, 140, 143),
                    width: 1,
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => const LoginScreen(),),
                          );
                          setState(() {
                            isMobileSelected = false;
                          });
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          decoration: BoxDecoration(
                            color: !isMobileSelected
                                ? Color(0xFF2D5356)
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(
                              "Mobile",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: !isMobileSelected
                                    ? Color(0xFFFFFFFF)
                                    : const Color(0xFF2D5356),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => const EmailScreen(),),
                          );
                          setState(() {
                            isMobileSelected = true;
                          });
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          decoration: BoxDecoration(
                            color: isMobileSelected
                                ? Color(0xFF2D5356)
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(
                              "Email",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: isMobileSelected
                                    ? Color(0xFFFFFFFF)
                                    : const Color(0xFF2D5356),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),


              ),

            ),

            const SizedBox(height: 20),
            HeadlineText1(text: "Welcome Back !"),

            const SizedBox(height: 10),
            SubHeading(text: "Enter your existing account details."),

            const SizedBox(height: 20),
            CustomTextField(
              label: "Email Id",
              hintText: "abc@gmail.com",
              keyboardType: TextInputType.emailAddress,
            ),

            CustomTextField(
              label: "Password",
              hintText: "abc@gmail.com",
              keyboardType: TextInputType.visiblePassword,
            ),

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

            CustomButton(text: "Sign In", 
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => EmailverificationScreen(),),
                );
            },
            ),

            const SizedBox(height: 20),

            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => ForgetpasswordScreen(),),
                  );
              },
              child: Text("Forget Password?",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xFF2D5356),
                fontFamily: "AlegreyaSans",
              ),
              ),
            ),


            const SizedBox(height: 200),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => SignupScreen(),), 
                                              );
              },
              child: Text(
                "Don’t have account? Sign Up ",
                style: TextStyle(fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color(0xFF4D525F),
                fontFamily: "AlegreyaSans-Bold"), 
              
              ),
            ),
          ],
         ),
        ),
    );
  }
}