import 'package:flutter/material.dart';

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
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 255, 255, 255),
        ),
      ),
      home: Authchoice(),
    );
  }
}

class Authchoice extends StatelessWidget {
  const Authchoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(
                16,
              ), // Adjust the radius as needed
              child: Image.asset(
                'images/auth.png',
                width: 180,
                height: 170,
                fit: BoxFit.cover,
              ),
            ),
            TextButton(
              onPressed: () => (),
              style: TextButton.styleFrom(
                foregroundColor: Color(0xffffffff),

                backgroundColor: Color(0xff2C2C2C),
                minimumSize: Size(140, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text("Log In"),
            ),
            TextButton(
              onPressed: () => (),
              style: TextButton.styleFrom(
                foregroundColor: Color.fromARGB(255, 0, 0, 0),

                minimumSize: Size(110, 40),
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Color(0xff2C2C2C), width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text("Register as Nurse "),
            ),
          ],
        ),
      ),
    );
  }
}
