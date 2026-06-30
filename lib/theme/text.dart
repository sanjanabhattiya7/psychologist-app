import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

//Main Heading
class HeadlineText1 extends StatelessWidget {
  final double? fontSize;
  final String text;
  final int? maxLines;
  final TextAlign? textAlign;
  final Color? textColor;
  const HeadlineText1({
    super.key,
    this.fontSize,
    this.textColor,
    required this.text,
    this.maxLines,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) => Text(
    text,
    maxLines: maxLines,
    textAlign: textAlign,
    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
      fontSize: 32,
      color: const Color(0xFF2D5356),
      letterSpacing: 0,
      fontWeight: FontWeight.w400,
      fontFamily: "AbrilFatface",
    ),
  );
}

//Sub Heading
class SubHeading extends StatelessWidget {
  final double? fontSize;
  final String text;
  final int? maxLines;
  final TextAlign? textAlign;
  final Color? textColor;
  const SubHeading({
    super.key,
    this.fontSize,
    this.textColor,
    required this.text,
    this.maxLines,
    this.textAlign,
  });
  @override
  Widget build(BuildContext context) => Text(
    text,
    maxLines: maxLines,
    textAlign: textAlign,
    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
      fontSize: 18,
      color: Color(0xFF497E7A),
      letterSpacing: 0,
      fontWeight: FontWeight.w500,
      fontFamily: "Alegreya Sans",
    ),
  );
}

//Custom Text Field
class CustomTextField extends StatelessWidget {
  final String label;
  final String hintText;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final bool obscureText;
  final String? Function(String?)? validator;
  final IconData? prefixIcon;
  final Widget? suffixIcon;

  const CustomTextField({
    super.key,
    required this.label,
    required this.hintText,
    this.controller,
    this.validator,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.prefixIcon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8, left: 8, top: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Color(0xFF2D5356),
              fontFamily: "Alegreya Sans",
            ),
          ),

          const SizedBox(height: 8),
          TextFormField(
            controller: controller,
            keyboardType: keyboardType,
            obscureText: obscureText,
            validator: validator,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontFamily: "Abril Fatface",
                color: Color.fromARGB(255, 148, 165, 167),
              ),
              filled: true,
              fillColor: Color(0xFFFFFFFF),
              prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
              suffixIcon: suffixIcon,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 8,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  color: Color.fromARGB(255, 190, 209, 210),
                  width: 1,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  color: Color(0xFF2D5356),
                  width: 1.5,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Colors.red, width: 1),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Colors.red, width: 1.5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//term and condition check box
class CustomCheckbox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?> onChanged;
  final String normalText;
  final String termsText;
  final String privacyText;
  final VoidCallback? onTermsTap;
  final VoidCallback? onPrivacyTap;

  const CustomCheckbox({
    super.key,
    required this.value,
    required this.onChanged,
    required this.normalText,
    required this.termsText,
    required this.privacyText,
    this.onTermsTap,
    this.onPrivacyTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8, left: 8, top: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
            width: 30,
            child: Checkbox(
              value: value,
              activeColor: Color(0xFF2D5356),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              onChanged: onChanged,
            ),
          ),
      
          const SizedBox(width: 5),
      
          Expanded(
            child: RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF4D525F),
                  height: 1.5,
                  fontFamily: "Alegreya Sans",
                ),
                children: [
                  TextSpan(text: "$normalText "),
                  TextSpan(
                    text: termsText,
                    style: const TextStyle(
                      color: Color(0xFF1D61E7),
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                    recognizer: TapGestureRecognizer()..onTap = onTermsTap,
                  ),
      
                  const TextSpan(text: " and "),
      
                  TextSpan(
                    text: privacyText,
                    style: const TextStyle(
                      color: Color(0xFF1D61E7),
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                    recognizer: TapGestureRecognizer()..onTap = onPrivacyTap,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


//primary button widget 
class CustomButton extends StatelessWidget{
  final String text;
  final VoidCallback onTap;
  final Color backgroundColor;
  final Color textColor;
  final double height;
  final double? widht;
  final double borderRadius;
  final double fontSize;
  final FontWeight fontWeight;

  const CustomButton({
    super.key,
    required this.text,
    required this.onTap,
    this.backgroundColor = const Color(0xFF2D5356),
     this.textColor = Colors.white,
    this.height = 60,
    this.widht = double.infinity,
    this.borderRadius = 8,
    this.fontSize = 16,
    this.fontWeight = FontWeight.w800,
  });

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.only(top: 16, right: 8, left: 8),
      child: InkWell(
        borderRadius: BorderRadius.circular(borderRadius),
        onTap: onTap,
        child: Container(
          height: height,
          width: widht,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(borderRadius),
            border: Border.all(
              color: Color(0xFF2D5356),
              width: 1,
            ),
          ),
      
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: fontSize,
                fontWeight: fontWeight,
                color: textColor,
                fontFamily: "AlegreyaSans",
              ),
            ),
          ),
          
        ),
      
      ),
    );
  }

}

