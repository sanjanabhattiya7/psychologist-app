import 'package:flutter/material.dart';
import 'package:psycholoist/theme/text.dart';
// import 'package:psycholoist/feature/auth/screen/forgetpassword_screen.dart';
import 'package:psycholoist/feature/auth/screen/login_screen.dart';
import 'package:psycholoist/feature/Home/screen/home_screen.dart';

class OtpverificationScreen extends StatefulWidget {
  const OtpverificationScreen({super.key});

  @override
  State<OtpverificationScreen> createState() => _OtpverificationScreenState();
}

class _OtpverificationScreenState extends State<OtpverificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFCF3),
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFCF3),
        elevation: 0,
        automaticallyImplyLeading: false,
        titleSpacing: 16,
        title: Row(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xFFFFFFFF),
              ),
              child: IconButton(
                icon: const Icon(Icons.arrow_back, color: Color(0xFF2D5356)),
                onPressed: () {
                 Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen(),), 
                  );
                },
              ),
            ),
            const SizedBox(width: 24),
            const Text(
              "OTP Verification",
              style: TextStyle(
                color: Color(0xFF2D5356),
                fontSize: 20,
                fontFamily: "AbrilFatface",
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 28),
            Center(
              child: Text(
                "OTP sent to +91 0000000000",
                style: TextStyle(
                  fontFamily: "AlegreyaSans",
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Color(0xFF2D5356),
                ),
              ),
            ),

            const SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: Row(
                children: List.generate(
                  4,
                  (index) => Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: index == 4 ? 0 : 12),
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        maxLength: 1,
                        style: const TextStyle(
                          fontSize: 18,
                          color: Color(0xFF2D5356),
                          fontWeight: FontWeight.w500,
                        ),
                        decoration: InputDecoration(
                          counterText: "",
                          filled: true,
                          fillColor: Color(0XFFFFFFFF),
                          contentPadding: EdgeInsets.symmetric(vertical: 12),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                              color: Color(0xFF2D5356),
                              width: 1.5,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                              color: Color(0xFF2D5356),
                              width: 1.5,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),

            CustomButton(
              text: "Submit",
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen(),),
                  );
              },
            ),

            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Text(
                    "Didn't received OTP?",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "AlegreyaSans",
                      color: Color(0xFF000000),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 130),

                  Text(
                    "Resend OTP",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "AlegreyaSans",
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF1D61E7),
                    ),
                  ),
                ],
              ),
            ),

            CustomButton(
              text: "Resend OTP on SMS", 
              onTap: (){
                // Navigator.pushReplacement(
                //   context,
                //   MaterialPageRoute(builder: (context) => ),

                // );
              }
              ),
          ],
        ),
      ),
    );
  }
}
