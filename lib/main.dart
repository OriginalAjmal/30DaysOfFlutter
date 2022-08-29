import 'package:flutter/material.dart';
import 'package:test_app/pages/cart_page.dart';
// ignore: unused_import
import 'package:test_app/pages/home_detail_page.dart';
import 'package:test_app/pages/login_page.dart';
import 'package:test_app/utils/routes.dart';
import 'package:test_app/widgets/themes.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.ligthTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.loginRoute,
      routes: {
        "/": (context) => const LoginPage(),
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.loginRoute: (context) => const LoginPage(),
        MyRoutes.cartRoute: (context) => const CartPage(),
      },
    );
  }
}
