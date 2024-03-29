import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mylist/services/theme_services.dart';
import 'package:mylist/ui/size_config.dart';
import 'package:mylist/ui/theme.dart';

import 'ui/pages/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GetMaterialApp(
      title: 'MyList Todo App',
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: ThemeServices().getTheme,
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
