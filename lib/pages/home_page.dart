

import 'package:flutter/material.dart';
import 'package:hello_world/pages/dashboard/dashbord.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Dashbord();
  }
}