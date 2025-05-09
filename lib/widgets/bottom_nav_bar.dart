import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          BottomNavItem(svgSrc: "assets/icons/calendar.svg", title: "Today"),
          BottomNavItem(
            svgSrc: "assets/icons/gym.svg",
            title: "All Exercises",
            press: () {},
            isActive: true,
          ),
          BottomNavItem(svgSrc: "assets/icons/Settings.svg", title: "Settings"),
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final String svgSrc;
  final String title;
  final void Function()? press;
  final bool isActive;

  const BottomNavItem({
    Key? key,
    required this.svgSrc,
    required this.title,
    this.press,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SvgPicture.asset(
            svgSrc,
            color: isActive ? kActiveIconColor : kTextColor,
          ),
          Text(
            title,
            style: TextStyle(color: isActive ? kActiveIconColor : kTextColor),
          ),
        ],
      ),
    );
  }
}
