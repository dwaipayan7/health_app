import 'package:flutter/material.dart';
import 'package:health_app/models/doctor_model.dart';

class NearByDoctors extends StatelessWidget {
  const NearByDoctors({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(nearbyDoctors.length, (index) {
        final doctor = nearbyDoctors[index];
        return Padding(
          padding: EdgeInsets.only(bottom: 30),
          child: Row(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: NetworkImage(
                        doctor.profile,
                      ),
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Dr. ${doctor.name}",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    doctor.position,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Icon(
                       Icons.star,
                       color: Colors.yellow[700],
                        size: 18,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4, right: 6),
                        child: Text(
                          doctor.rating.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text("(${doctor.reviews.toString()}) Reviews")
                    ],
                  ),
                ],
              ),
            ],
          ),
        );
      }),
    );
  }
}
