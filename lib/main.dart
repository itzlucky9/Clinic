import 'package:flutter/material.dart';
import 'package:medical_clinic_booking_app/Screens/main_navigation.dart';


void main(){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_)=> MainNavigation())
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF3E69FE),
        body: Center(
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "CLI",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.width * 0.08,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 4
                  )
                ),

                TextSpan(
                  text: "NIC",
                  style: TextStyle(
                    color: Color.fromARGB(255, 28, 59, 172),
                    fontSize: MediaQuery.of(context).size.width * 0.08,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 4
                  )
                )
              ]
            ),
          )
        )
      )
    );
  }
}