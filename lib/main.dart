import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nursemate_partner/screens/auth/auth_choice.dart';
import 'package:nursemate_partner/screens/auth/login.dart';
// Make sure the class in auth_choice.dart is named AuthChoice, not Authchoice

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NurseMate-Partner',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'poppins',
        textTheme: GoogleFonts.poppinsTextTheme()
            .apply(bodyColor: Colors.black, displayColor: Colors.black)
            .copyWith(
              bodyLarge: GoogleFonts.poppins(fontWeight: FontWeight.w500),
              bodyMedium: GoogleFonts.poppins(fontWeight: FontWeight.w400),
              bodySmall: GoogleFonts.poppins(fontWeight: FontWeight.w300),
              titleLarge: GoogleFonts.poppins(fontWeight: FontWeight.w500),
              titleMedium: GoogleFonts.poppins(fontWeight: FontWeight.w500),
              titleSmall: GoogleFonts.poppins(fontWeight: FontWeight.w300),
              // Add more if needed
            ),

        scaffoldBackgroundColor: Colors.grey.shade50,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 255, 255, 255),
        ),
      ),

      routes: {'/': (context) => Login()},
    );
  }
}
