import 'package:flutter/material.dart';
import 'package:my_todo/ui/shared/constants.dart';

class ScheduleTaskCard extends StatelessWidget {
  const ScheduleTaskCard({
    Key? key,
    required this.title,
    required this.description,
    required this.time,
  }) : super(key: key);

  final String time, title, description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Card(
        color: grey300,
        elevation: 20,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      time,
                    ),
                  ),
                ],
              ),
              Text(
                title,
                style: blackText18Bold,
              ),
              Text(
                description,
                style: greyText14Normal,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
