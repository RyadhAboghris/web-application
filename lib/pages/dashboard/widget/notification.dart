import 'package:flutter/material.dart';
import 'package:hello_world/shared/app_colors.dart';

class Notifications extends StatefulWidget {

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.mainColor,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.all(20),
      child: Row(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text.rich(
              TextSpan(
                  style: TextStyle(fontSize: 16, color: AppColor.black),
                  children: [
                    TextSpan(text: 'Hello World'),
                    TextSpan(
                        text: 'New Web Site',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ]),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'blabla',
              style: TextStyle(
                fontSize: 14,
                color: AppColor.black,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Read More...',
              style: TextStyle(
                fontSize: 14,
                color: AppColor.black,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
        Spacer(),
        // Image.asset(
        //   'assets/images/disk.png',
        //   height: 150,
        //   width: 150,
        // ),
      ]),
    );
  }
}
