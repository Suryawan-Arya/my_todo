import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_todo/ui/home_page/home_page.dart';
import 'package:my_todo/ui/shared/constants.dart';
import 'package:my_todo/ui/shared/schedule_task_card.dart';

class Schedule extends StatefulWidget {
  const Schedule({
    Key? key,
  }) : super(key: key);

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  List<Widget> dayList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    DateTime dateTime = DateTime.now();
    for (var i = 0; i < 7; i++) {
      DateTime nextDay = DateTime(dateTime.year, dateTime.month, dateTime.day + i);
      dayList.add(
        DateCardFormat(
          day: nextDay.day.toString(),
          dayName: DateFormat('EE').format(nextDay).toString(),
          fillColor: Colors.transparent,
          onTap: () {
            print(nextDay);
          },
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Let\'s',
              style: title,
            ),
            Text(
              'Manage Your Day Now and Later',
              style: subTitle,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 30),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: dayList,
                ),
              ),
            ),
            Text(
              'What is Your Plan',
              style: heading1,
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ScheduleTaskCard(
                    title: 'Cycling to Uluwatu',
                    description: 'Remenber to bring more water',
                    time: '6:30',
                  ),
                  ScheduleTaskCard(
                    title: 'Create Project',
                    description: 'Make some Flutter project',
                    time: '13:00',
                  ),
                  ScheduleTaskCard(
                    title: 'Create Project',
                    description: 'Make some Flutter project',
                    time: '13:00',
                  ),
                  ScheduleTaskCard(
                    title: 'Create Project',
                    description: 'Make some Flutter project',
                    time: '13:00',
                  ),
                  ScheduleTaskCard(
                    title: 'Create Project',
                    description: 'Make some Flutter project',
                    time: '13:00',
                  ),
                  ScheduleTaskCard(
                    title: 'Create Project',
                    description: 'Make some Flutter project',
                    time: '13:00',
                  ),
                  ScheduleTaskCard(
                    title: 'Create Project',
                    description: 'Make some Flutter project',
                    time: '13:00',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
