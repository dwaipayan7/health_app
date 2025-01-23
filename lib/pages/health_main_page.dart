import 'package:flutter/material.dart';
import 'package:health_app/pages/health_home_page.dart';
import 'package:health_app/utils/color.dart';
import 'package:iconsax/iconsax.dart';
import 'doctor_schedule_page.dart';

class HealthMainPage extends StatefulWidget {
  const HealthMainPage({super.key});

  @override
  State<HealthMainPage> createState() => _HealthMainPageState();
}

class _HealthMainPageState extends State<HealthMainPage> {
  int selectedIndex = 0;

  final List pages = [
    HealthHomePage(),
    DoctorSchedulePage(),
    Scaffold(
      body: Center(child: Text("Message"),),
    ),
    Scaffold(
      body: Center(child: Text("Profile"),),
    ),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: onItemTapped,
        elevation: 0,
        unselectedItemColor: Colors.black26,
        backgroundColor: Colors.white,
        selectedItemColor: kPrimaryColor,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(icon: Icon(Iconsax.home5), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Iconsax.calendar_1), label: "Calender"),
          BottomNavigationBarItem(icon: Icon(Iconsax.message), label: "Message"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: "Profile"),
        ],
      ),
      body: pages[selectedIndex],
    );
  }
}
