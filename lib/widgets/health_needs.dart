import 'package:flutter/material.dart';
import 'package:health_app/models/needed_category.dart';
import 'package:health_app/utils/color.dart';

class HealthNeeds extends StatelessWidget {
  const HealthNeeds({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        customIcons.length,
        (index) {
          return Column(
            children: [
              InkWell(
                onTap: () {
                  if (index == customIcons.length - 1) {
                    showModalBottomSheet(
                      context: context,
                      showDragHandle: true,
                      builder: (context) {
                        return Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(20),
                          height: 418,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Health Needs",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Divider(),
                              SizedBox(height: 15,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children:
                                  List.generate(healthNeeds.length, (index){
                                    return Column(
                                      children: [
                                        Container(
                                          width: 80,
                                          height: 80,
                                          padding: EdgeInsets.all(20),
                                          decoration: BoxDecoration(
                                            color: secondaryBgColor,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.asset(healthNeeds[index].icon),
                                        ),
                                        // SizedBox(height: 15,),
                                        Text(healthNeeds[index].name),
                                      ],
                                    );
                                  }),

                              ),
                              SizedBox(height: 7,),
                              Text("Other Needs", style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),),
                              Divider(),
                              // SizedBox(height: 30,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children:
                                List.generate(specialisedCared.length, (index){
                                  return Column(
                                    children: [
                                      Container(
                                        width: 80,
                                        height: 80,
                                        padding: EdgeInsets.all(20),
                                        decoration: BoxDecoration(
                                          color: secondaryBgColor,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.asset(specialisedCared[index].icon),
                                      ),
                                      SizedBox(height: 15,),
                                      Text(specialisedCared[index].name),
                                    ],
                                  );
                                }),

                              )

                            ],
                          ),
                        );
                      },
                    );
                  }
                },
                borderRadius: BorderRadius.circular(190),
                child: Container(
                  width: 80,
                  height: 80,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: secondaryBgColor,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(customIcons[index].icon),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(customIcons[index].name),
            ],
          );
        },
      ),
    );
  }
}
