
import 'package:flutter/material.dart';
import 'package:psycholoist/feature/onboarding/screen/onboarding_screen.dart';

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
        MaterialPageRoute(
          builder: (context) => const OnboardingScreen(),),
        );
    }
    
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/logo.png",
              height:180,
              width: 250),

              Text("Wellhope Hiring",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w400,
                color: Color(0xFF2D5356),
                fontFamily: "AbrilFatface",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}