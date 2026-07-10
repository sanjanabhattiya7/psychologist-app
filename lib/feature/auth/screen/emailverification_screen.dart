import 'package:flutter/material.dart';
import 'package:psycholoist/theme/text.dart';

class EmailverificationScreen extends StatefulWidget {
  const EmailverificationScreen({super.key});

  @override
  State<EmailverificationScreen> createState() => _EmailverificationScreenState();
}

class _EmailverificationScreenState extends State<EmailverificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFCF3),
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFCF3),
        elevation: 0,
        automaticallyImplyLeading: false,
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
                onPressed: (){
                  Navigator.pop(context);
                }, 
                icon:const Icon(Icons.arrow_back),),
            ),

            const SizedBox(width: 30),

            Text("OTP Verification",
            style: TextStyle(
              fontSize: 20,
              fontFamily: "AbrilFatface",
              fontWeight: FontWeight.w400,
              color: Color(0xFF2D5356),
            ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 40),

            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("We sent a reset link to contact@vedwereode.com enter 4 digit code that mentioned in the email",
                style: TextStyle(
                  fontFamily: "Alegreya-Sans",
                  color: Color(0xFF2D5356),
                  fontSize: 16,
                  fontWeight: FontWeight.w500
                ),
                textAlign: TextAlign.center,
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
              text: "Verify Code", 
              onTap: (){
                // Navigator.pushReplacement(
                //   context, 
                //   MaterialPageRoute(builder: (context) => )
                  
                //  ),
              }
            ),

            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("Didn't received OTP?",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Alegreya Sans",
                    color: Color(0xFF2D5356),
                  ),
                ),

                const SizedBox(width: 150),

                Text("Resend OTP",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Alegreya Sans",
                    color: Color(0xFF1D61E7),
                  ),
                ),



                  
                ],
              ),
            ),
          ],
        ),
        ),
    );
  }
}