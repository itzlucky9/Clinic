import 'package:flutter/material.dart';
import 'package:medical_clinic_booking_app/Screens/home_screen.dart';


class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {

  int currentIndex = 0;
  final screens = [
   HomeScreen(),
   const Center(child: Text("SecondPage"),),
   const Center(child: Text("ThirdPage"),),
   const Center(child: Text("FourthPage"),)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "",),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border_rounded), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person_2_sharp), label: ""),
        ]),
    );
  }
}

