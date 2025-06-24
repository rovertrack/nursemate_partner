import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _agreedToTerms = false;
  final TextEditingController _phoneController = TextEditingController();
  String phoneNumber = '';
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
              SizedBox(height: 180),
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
              SizedBox(height: 24),
              SizedBox(
                height: 50,
                child: TextField(
                  autofocus: true,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    prefixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(width: 8),
                        Text(
                          '+91',
                          style: TextStyle(
                            color: Colors.grey.shade800,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(width: 8),
                        Container(
                          height: 24,
                          width: 1,
                          color: Colors.grey.shade400,
                        ),
                        SizedBox(width: 8),
                      ],
                    ),
                    hintStyle: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey, // Changed to grey
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey, // Changed to grey
                        width: 0.1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(
                          26,
                          181,
                          191,
                          1,
                        ), // Changed to grey
                        width: 1.3,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'Enter Mobile Number',
                    counterText: '', // Removes the maxLength indicator
                  ),
                  onChanged: (value) {
                    phoneNumber = value;
                  },
                  maxLength: 10,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    activeColor: Color.fromRGBO(26, 181, 191, 1),
                    side: BorderSide(color: Colors.grey.shade400),

                    value: _agreedToTerms,
                    onChanged: (bool? value) {
                      setState(() {
                        _agreedToTerms = value ?? false;
                      });
                    },
                  ),
                  Flexible(
                    child: Text(
                      'By signing up you agree to our Terms of Use',
                      style: TextStyle(
                        fontSize: 11,
                        color: const Color.fromARGB(255, 23, 23, 23),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed:
                    _agreedToTerms
                        ? () {
                          // TODO: Implement send OTP logic
                        }
                        : null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyan.shade600,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 13),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  textStyle: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: Row(
                  spacing: 8,
                  mainAxisSize: MainAxisSize.min,
                  children: [Text("Send OTP"), Icon(Icons.send, size: 20)],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
