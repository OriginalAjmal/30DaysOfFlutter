import 'package:flutter/material.dart';
import 'package:test_app/widgets/drawer.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final int days = 2;
  final String name = "Hello";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: Center(
        child: Text("$name Ajmal Day $days"),
      ),
      drawer: const MyDrawer(),
    );
  }
}
