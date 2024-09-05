import 'package:flutter/material.dart';
import 'package:flutterapps/screen/builder.dart';
import 'package:flutterapps/screen/home_screen2.dart';

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
        debugShowCheckedModeBanner: false,
        home:  HomeScreen2(),
        themeMode: ThemeMode.system,

        theme:ThemeData(
            appBarTheme: AppBarTheme(
              backgroundColor: Colors.amber,
            ),
            brightness: Brightness.light,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue
          )
        )
        ),
      darkTheme: ThemeData(brightness: Brightness.dark,),
    );
  }
}
