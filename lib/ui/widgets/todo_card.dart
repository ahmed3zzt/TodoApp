import 'package:flutter/material.dart';
import 'package:mylist/ui/size_config.dart';
import 'package:unicons/unicons.dart';

class TodoCard extends StatelessWidget {
  const TodoCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.endTime,
    required this.startTime,
    required this.status,
    this.onTap,
    required this.cardColor,
  });

  final String title;
  final String subtitle;
  final String startTime;
  final String endTime;
  final String status;
  final void Function()? onTap;
  final Color cardColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
          padding: const EdgeInsets.all(16),
          width: SizeConfig.screenWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: cardColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Icon(UniconsLine.clock, color: Colors.white),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    startTime,
                    style: const TextStyle(color: Colors.white),
                  ),
                  const Text(' - ', style: TextStyle(color: Colors.white)),
                  const Text(
                    '11:00 AM',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(children: [
                SizedBox(
                  width: SizeConfig.screenWidth * 0.6,
                  child: Text(
                    subtitle,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                    onTap: onTap,
                    child: Transform(
                      transform: Matrix4.translationValues(16, -22, 0),
                      child: Transform(
                        transform: Matrix4.rotationZ(270 * 3.14 / 180),
                        alignment: Alignment.center,
                        child: Text(
                          status,
                          style: const TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ))
              ])
            ],
          )),
    );
  }
}
