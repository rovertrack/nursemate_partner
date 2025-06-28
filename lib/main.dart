import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:nursemate_partner/screens/home/home.dart';
import 'firebase_options.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nursemate_partner/screens/auth/auth_choice.dart';
import 'package:nursemate_partner/screens/auth/login.dart';
import 'package:nursemate_partner/screens/auth/otp.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
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
        pageTransitionsTheme: PageTransitionsTheme(
          builders: {
            TargetPlatform.android: FancyPageTransitionBuilder(),
            TargetPlatform.iOS: CustomPageTransitionBuilder(),
          },
        ),
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
            ),

        scaffoldBackgroundColor: Colors.grey.shade50,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 255, 255, 255),
        ),
      ),
      routes: {'/': (context) => Login(), '/home': (context) => Home()},
    );
  }
}

class CustomPageTransitionBuilder extends PageTransitionsBuilder {
  @override
  Widget buildTransitions<T>(
    PageRoute<T> route,
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    // You can customize this animation
    return FadeTransition(opacity: animation, child: child);
  }
}

class FancyPageTransitionBuilder extends PageTransitionsBuilder {
  @override
  Widget buildTransitions<T>(
    PageRoute<T> route,
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    final curve = CurvedAnimation(
      parent: animation,
      curve: Curves.easeInOutBack,
    );

    return FadeTransition(
      opacity: Tween<double>(begin: 0.0, end: 18.0).animate(curve),
      child: child,
    );
  }
}
