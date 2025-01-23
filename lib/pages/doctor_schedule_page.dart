import 'package:flutter/material.dart';
import 'package:health_app/models/schedule_model.dart';
import 'package:health_app/utils/color.dart';
import 'package:iconsax/iconsax.dart';

class DoctorSchedulePage extends StatefulWidget {
  const DoctorSchedulePage({super.key});

  @override
  State<DoctorSchedulePage> createState() => _DoctorSchedulePageState();
}

class _DoctorSchedulePageState extends State<DoctorSchedulePage> {
  String selectedOption = "Upcoming";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.black12,
                      ),
                      color: Colors.white,
                    ),
                    child: Icon(
                      Icons.arrow_back,
                      size: 25,
                    ),
                  ),
                  Text(
                    "Schedule",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 45,
                  ),
                ],
              ),
              SizedBox(
                width: 25,
              ),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.black12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildOption("Upcoming"),
                    buildOption("Complete"),
                    buildOption("Result"),
                    // buildUpcoming(),
                  ],
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: buildContent(),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildOption(String option) {
    return Container(
      padding: EdgeInsets.only(top: 13, bottom: 13, right: 25, left: 36),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: selectedOption == option ? kPrimaryColor : Colors.transparent,
      ),
      child: GestureDetector(
        onTap: () {},
        child: Text(
          option,
          style: TextStyle(
              color: selectedOption == option ? Colors.white : Colors.black38),
        ),
      ),
    );
  }

  Widget buildContent() {
    if (selectedOption == "Upcoming") {
      return buildUpcoming();
    } else if (selectedOption == "Complete") {
      return buildComplete();
    } else if (selectedOption == "Result") {
      return buildResult();
    }
    return const SizedBox.shrink();
  }

  Widget buildUpcoming() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: scheduleDoctors.length,
      itemBuilder: (context, index) {
        final doctor = scheduleDoctors[index];
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Container(
            width: double.maxFinite,
            height: 215,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: secondaryBgColor,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(doctor.profile),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                           doctor.name,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.black54,
                            ),
                          ),
                          Text(
                            doctor.position,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: cardBgColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 35,
                    width: 290,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Iconsax.calendar_1,
                          color: Colors.black54,
                        ),
                        Text(
                          doctor.date,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black54,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Iconsax.clock,
                          color: Colors.black54,
                        ),
                        Text(
                          doctor.time,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.amber),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                          child: Text(
                            "Cancel",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: kPrimaryColor
                            ),
                          ),
                        ),
                      ),

                      SizedBox(width: 12,),

                      Container(

                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                          child: Text(
                            "Reschedule",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: Colors.white54
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget buildComplete() {
    return Center(
      child: Text(
        "No appointments Complete",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Colors.black87,
        ),
      ),
    );
  }

  Widget buildResult() {
    return Center(
      child: Text(
        "No appointments Result",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Colors.black87,
        ),
      ),
    );
  }
}
