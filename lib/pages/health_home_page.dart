import 'package:flutter/material.dart';
import 'package:health_app/widgets/health_needs.dart';

import '../widgets/doctor_profile.dart';
import '../widgets/near_by_doctors.dart';

class HealthHomePage extends StatelessWidget {
  const HealthHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi, Dwaipayan",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "How are you feeling today?",
              style: TextStyle(
                fontSize: 17,
                color: Colors.black45,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        actions: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black26)),
            child: Icon(
              Icons.notifications,
              color: Colors.black,
              size: 25,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.black26,
                )),
            child: Icon(
              Icons.search,
              color: Colors.black,
              size: 25,
            ),
          )
        ],
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(14),
        children: [
          DoctorProfile(),
          SizedBox(
            height: 20,
          ),
          Text(
            "Health Needs",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          HealthNeeds(),
          SizedBox(
            height: 20,
          ),
          Text(
            "Nearby Doctor",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          NearByDoctors(),

        ],
      ),
    );
  }
}
