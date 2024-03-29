import 'dart:ui';

import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:mylist/ui/size_config.dart';
import 'package:mylist/ui/theme.dart';
import 'package:mylist/ui/widgets/button.dart';
import 'package:mylist/ui/widgets/todo_card.dart';
import 'package:unicons/unicons.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({super.key});

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  late DateTime _selectedValue;
  @override
  void initState() {
    _selectedValue = DateTime.now();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'September 27,2024',
                    style: context.theme.textTheme.titleLarge,
                  ),
                  Text('Today',
                      style: context.theme.textTheme.headlineMedium!
                          .copyWith(fontWeight: FontWeight.bold)),
                ],
              ),
              const Spacer(),
              CustomButton(
                title: 'Add Task',
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 100,
            child: DatePicker(
              DateTime.now(),
              width: 80,
              height: 100,
              initialSelectedDate: DateTime.now(),
              selectionColor: primaryClr,
              selectedTextColor: Colors.white,
              dateTextStyle: context.theme.textTheme.bodyLarge!
                  .copyWith(fontWeight: FontWeight.bold, fontSize: 24),
              dayTextStyle: context.theme.textTheme.bodyMedium!.copyWith(
                fontWeight: FontWeight.w600,
              ),
              monthTextStyle: context.theme.textTheme.bodyMedium!
                  .copyWith(fontWeight: FontWeight.w600),
              onDateChange: (date) {
                // New date selected
                setState(
                  () {
                    _selectedValue = date;
                    print(_selectedValue.toString());
                  },
                );
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  TodoCard(
                    cardColor: Colors.pink,
                    title: 'Task 1',
                    subtitle:
                        'Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet',
                    startTime: '10:00 AM',
                    status: 'Pending',
                    onTap: () {},
                    endTime: '11:00 AM',
                  ),
                  TodoCard(
                    cardColor: Colors.green,
                    title: 'Task 2',
                    subtitle:
                        'Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet',
                    startTime: '10:00 AM',
                    status: 'Pending',
                    onTap: () {},
                    endTime: '11:00 AM',
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
