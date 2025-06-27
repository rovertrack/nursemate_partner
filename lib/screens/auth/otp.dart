import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  bool show = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The back button appears automatically if possible
        leading:
            BackButton(), // Optional: you can customize or remove this line
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
      ), // Icon color
      body: Padding(
        padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 80),
              Container(
                width: 200,
                height: 200,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(1, -5),
                      color: Colors.grey.shade500,
                      blurRadius: 0.5,
                      spreadRadius: 0.19,
                    ),
                    BoxShadow(
                      color: Colors.white,
                      blurRadius: 4,
                      spreadRadius: 0.1,
                    ),
                  ],
                ),
                child: ClipOval(
                  child: Image.asset(
                    'images/auth.png',
                    width: 160,
                    height: 160,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20),

              Text(
                "Enter OTP",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
              Text("OTP sent to "),
              SizedBox(height: 5),
              PinCodeTextField(
                autoFocus: true,
                length: 6,
                obscureText: false,
                showCursor: false,
                animationType: AnimationType.none,
                appContext: context,
                mainAxisAlignment: MainAxisAlignment.center,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(10),
                  fieldHeight: 45,
                  fieldWidth: 40,
                  fieldOuterPadding: EdgeInsets.all(5),
                  disabledColor: Colors.amber,
                  selectedColor: Colors.cyan.shade400,
                  borderWidth: 1.5,
                  activeBorderWidth: 1.5,
                  selectedBorderWidth: 1.5,
                  inactiveColor: Colors.transparent,
                  selectedFillColor: Colors.grey.shade100,
                  activeColor: Colors.cyan.shade300,
                  inactiveFillColor: Colors.grey.shade200,
                  activeFillColor: Colors.white,
                ),

                keyboardType: TextInputType.number,
                animationDuration: Duration(milliseconds: 100),
                enableActiveFill: true,

                onCompleted: (v) {
                  print("Completed");
                },
                onChanged: (value) {
                  print(value);
                  setState(() {});
                },
                beforeTextPaste: (text) {
                  print("Allowing to paste $text");
                  //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                  //but you can show anything you want here, like your pop up saying wrong paste format or etc
                  return true;
                },
              ),
              SizedBox(height: 60),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyan.shade600,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 80, vertical: 13),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  textStyle: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: Row(
                  spacing: 8,
                  mainAxisSize: MainAxisSize.min,
                  children: [Text("Submit")],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



// SizedBox(height: 200),
//             OtpTextField(
//               autoFocus: true,
//               borderRadius: BorderRadius.circular(10),
//               margin: EdgeInsets.all(4),
//               showCursor: false,
//               fieldHeight: 50,
//               fieldWidth: 50,
//               fillColor: Colors.grey.shade300,
//               enabled: true,
//               borderWidth: 1.5,
//               enabledBorderColor: Colors.grey.shade100,
//               numberOfFields: 6,
//               focusedBorderColor: Colors.cyan.shade500,
//               showFieldAsBox: true,
//               filled: true,
//               onCodeChanged: (String code) {},
//               //runs when every textfield is filled
//               onSubmit: (String verificationCode) {
//                 setState(() {
//                   show = true;
//                 });
//                 showDialog(
//                   context: context,
//                   builder: (context) {
//                     return AlertDialog(
//                       title: Text("Verification Code"),
//                       content: Text('Code entered is $verificationCode'),
//                     );
//                   },
//                 );
//               }, // end onSubmit
//             ),