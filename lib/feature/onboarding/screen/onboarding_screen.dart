import 'package:flutter/material.dart';
import 'package:psycholoist/feature/onboarding/screen/onboardingData.dart';
import 'package:psycholoist/feature/auth/screen/login_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {

  final PageController _pageController = PageController();

  int currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xffFDFBF6),

      body: SafeArea(

        child: Column(

          children: [

            Expanded(

              child: PageView.builder(

                controller: _pageController,

                itemCount: onboardingData.length,

                onPageChanged: (index) {

                  setState(() {

                    currentPage = index;

                  });

                },

                itemBuilder: (context, index) {

                  return Padding(

                    padding: const EdgeInsets.symmetric(horizontal: 25),

                    child: Column(

                      children: [

                        SizedBox(height: height * .04),

                        Image.asset(
                          "assets/images/logo1.png",
                          width: width * .55,
                        ),

                        SizedBox(height: height * .03),

                        Text(

                          onboardingData[index].title,

                          textAlign: TextAlign.center,

                          style: const TextStyle(

                            fontFamily: "AbrilFatface",

                            fontSize: 32,

                            color: Color(0xff2D5356),

                          ),

                        ),

                        SizedBox(height: height * .02),

                        Text(

                          onboardingData[index].description,

                          textAlign: TextAlign.center,

                          style: const TextStyle(

                            fontSize: 20,

                            fontWeight: FontWeight.w700,

                            color: Color(0xFF2D5356),

                          ),

                        ),

                        const SizedBox(height: 20),

                        Expanded(

                          child: Image.asset(

                            onboardingData[index].image,

                            fit: BoxFit.contain,

                          ),

                        ),

                      ],

                    ),

                  );

                },

              ),

            ),

            Row(

              mainAxisAlignment: MainAxisAlignment.center,

              children: List.generate(

                onboardingData.length,

                (index) => AnimatedContainer(

                  duration: const Duration(milliseconds: 300),

                  margin: const EdgeInsets.symmetric(horizontal: 4),

                  width: currentPage == index ? 24 : 10,

                  height: 10,

                  decoration: BoxDecoration(

                    color: currentPage == index
                        ? const Color(0xff2D5356)
                        : Colors.grey.shade400,

                    borderRadius: BorderRadius.circular(20),

                  ),

                ),

              ),

            ),

            const SizedBox(height: 20),

            Padding(

              padding: const EdgeInsets.symmetric(horizontal: 20),

              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [

                  TextButton(

                    onPressed: () {

                      _pageController.jumpToPage(onboardingData.length - 1);

                    },

                    child: const Text(

                      "Skip",

                      style: TextStyle(

                        fontSize: 18,

                        color: Colors.grey,

                      ),

                    ),

                  ),

                  ElevatedButton(

                    style: ElevatedButton.styleFrom(

                      backgroundColor: const Color(0xff2D5356),

                      padding: const EdgeInsets.symmetric(

                        horizontal: 35,

                        vertical: 15,

                      ),

                    ),

                    onPressed: () {

                      if (currentPage == onboardingData.length - 1) {

                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => LoginScreen(),),
                          );

                      } else {

                        _pageController.nextPage(

                          duration: const Duration(milliseconds: 400),

                          curve: Curves.easeInOut,

                        );

                      }

                    },

                    child: Text(

                      currentPage == onboardingData.length - 1
                          ? "Get Started"
                          : "Next",

                      style: const TextStyle(

                        color: Colors.white,

                        fontSize: 18,

                      ),

                    ),

                  ),

                ],

              ),

            ),

            const SizedBox(height: 30),

          ],

        ),

      ),

    );
  }
}