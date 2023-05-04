import 'package:flutter/material.dart';
import 'package:hello_world/pages/dashboard/widget/headbar.dart';
import 'package:hello_world/pages/dashboard/widget/notification.dart';
import 'package:hello_world/pages/dashboard/widget/table_of_emp_data.dart';

import '../../shared/app_colors.dart';

class Dashbord extends StatefulWidget {
  @override
  State<Dashbord> createState() => _DashbordState();
}

class _DashbordState extends State<Dashbord> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: AppColor.bgColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          children: [
            Headbar(),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                      child: Container(
                    child: Column(
                      children: [
                      Notifications(),
                      TableOfEmpData(),
                    ]),
                  )),
                  SizedBox(width: 10,),
                  Expanded(child: Container()),
                ],
              ),
            ),
          ],
        ));
  }
}
