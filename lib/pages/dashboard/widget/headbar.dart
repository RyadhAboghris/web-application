
import 'package:flutter/material.dart';
import 'package:hello_world/shared/app_colors.dart';

class Headbar extends StatefulWidget {

  @override
  State<Headbar> createState() => _HeadbarState();
}

class _HeadbarState extends State<Headbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(children: [
        Text(
          'Dashboard',
          style: TextStyle(fontSize: 10,
          fontWeight: FontWeight.bold),
        ),
        Spacer(),
        Row(
          children: [
navIcon(icon: Icons.search),
navIcon(icon: Icons.send),
navIcon(icon: Icons.notifications),
          ],
        )
      ]),
    );
  }

  Widget navIcon({icon}){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Icon(
        icon,
        color: AppColor.black,
      ),
    );
  }
}