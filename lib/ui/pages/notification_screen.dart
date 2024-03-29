import 'package:flutter/material.dart';
import 'package:glass/glass.dart';
import 'package:mylist/ui/theme.dart';
import 'package:unicons/unicons.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key, required this.payload});
  final String payload;
  @override
  // ignore: library_private_types_in_public_api
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    final String title = widget.payload.split('|')[0];
    final String description = widget.payload.split('|')[1];
    final String time = widget.payload.split('|')[2];
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.payload.split('|')[0]),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text('New Notification', style: subHeadingStyle),
              Text('lorem ipsum dolor sit amet', style: body2Style),
              const SizedBox(
                height: 16,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              UniconsLine.text,
                              size: 42,
                              color: primaryClr,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Title", style: headingStyle)
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            title,
                            style: subHeadingStyle,
                          ),
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                          children: [
                            Icon(
                              UniconsLine.text_fields,
                              size: 42,
                              color: primaryClr,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Description", style: headingStyle)
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            description,
                            style: subHeadingStyle,
                          ),
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                          children: [
                            Icon(
                              UniconsLine.calender,
                              size: 42,
                              color: primaryClr,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Time", style: headingStyle)
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            time,
                            style: subHeadingStyle,
                          ),
                        ),
                      ],
                    ),
                  ),
                ).asGlass(
                  clipBorderRadius: BorderRadius.circular(20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
