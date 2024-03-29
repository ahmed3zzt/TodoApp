import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mylist/services/theme_services.dart';
import 'package:mylist/ui/pages/notification_screen.dart';
import 'package:mylist/ui/widgets/home_page_body.dart';
import 'package:unicons/unicons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            ThemeServices().switchTheme();
            print('Theme Changed ${Get.isDarkMode}');
            setState(() {});
          },
          icon: Icon(
            Get.isDarkMode ? UniconsLine.moon : UniconsLine.sun,
            size: 30,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(
                const NotificationScreen(
                    payload:
                        'Main Title|Lorem Ipsum dolor sit amet |10/10/2022'),
                transition: Transition.cupertino,
              );
            },
            icon: const Icon(
              UniconsLine.user,
              size: 30,
            ),
          )
        ],
      ),
      body: const HomePageBody(),
    );
  }
}
