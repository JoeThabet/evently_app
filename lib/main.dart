import 'package:evently_app/Theme/app_theme.dart';
import 'package:evently_app/auth/login/login_screen.dart';
import 'package:evently_app/auth/regester/regester.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Evently App",
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      routes: {
        LoginScreen.routeName:(context) => LoginScreen(),
         Regiester.routeName:(context) => Regiester(),
      },
      initialRoute: LoginScreen.routeName,
      // home: ,
    );
  }
}
