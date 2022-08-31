// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:test_app/core/store.dart';
import 'package:test_app/pages/cart_page.dart';
import 'package:test_app/pages/login_page.dart';
import 'package:test_app/utils/routes.dart';
import 'package:test_app/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'pages/home_page.dart';

void main() {
  runApp(VxState(store: MyStore(), child: MyApp()));
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
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => const LoginPage(),
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.loginRoute: (context) => const LoginPage(),
        MyRoutes.cartRoute: (context) => const CartPage(),
      },
    );
  }
}
