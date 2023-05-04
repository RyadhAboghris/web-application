import 'package:flutter/material.dart';
import 'package:hello_world/shared/app_colors.dart';

class SideBar extends StatefulWidget {

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        color: AppColor.bgSideMenu,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                'MAIN WEB',
                style: TextStyle(
                  color: AppColor.mainColor,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            DrawerList(
                title: 'Dasbord',
                icon: Icons.dashboard,
                press: () {}),
            DrawerList(
                title: 'Recruitment',
                icon: Icons.recent_actors_outlined,
                press: () {}),
            DrawerList(
                title: 'Onboarding',
                icon: Icons.one_x_mobiledata_rounded,
                press: () {}),
            DrawerList(
                title: 'Reports',
                icon: Icons.report,
                press: () {}),
            DrawerList(
                title: 'Calendar',
                icon: Icons.calendar_month,
                press: () {}),
            DrawerList(
                title: 'Settings',
                icon: Icons.settings,
                press: () {}),
          ],
        ),
      ),
    );
  }
}

class DrawerList extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback press;

  const DrawerList({
    @required this.title,
    @required this.icon,
    @required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(
        title,
        style: TextStyle(color: AppColor.whith),
      ),
      onTap: press,
    );
  }
}
