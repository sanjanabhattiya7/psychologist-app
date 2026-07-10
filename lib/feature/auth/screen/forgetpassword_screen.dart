import 'package:flutter/material.dart';
import 'package:psycholoist/theme/text.dart';
import 'package:psycholoist/feature/auth/screen/emailverification_screen.dart';

class ForgetpasswordScreen extends StatefulWidget {
  const ForgetpasswordScreen({super.key});

  @override
  State<ForgetpasswordScreen> createState() => _ForgetpasswordScreenState();
}

class _ForgetpasswordScreenState extends State<ForgetpasswordScreen> {
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
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(7),
              ),
              child: IconButton(
                icon: const Icon(Icons.arrow_back, color: Color(0xFF2D5356)),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            const SizedBox(width: 30),
            Text("Forget Password",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              fontFamily: "AbrilFatface",
              color: Color(0xFF2D5356),
            ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 60),
            Center(
              child: Text("Please enter your email  to reset the password.",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color(0xFF2D5356),
              ),
              ),
            ),

            const SizedBox(height: 30),

            CustomTextField(
              label: "Email Id", 
              hintText: "example@gmail.com",
            ),

            const SizedBox(height: 30),

            CustomButton(
              text: "Reset Password", 
              onTap: (){
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => EmailverificationScreen(),),
                  );
              }
              ),


          ],
        ),
        ),
    );
  }
}