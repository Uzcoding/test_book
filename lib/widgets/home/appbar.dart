import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar getAppBar() {
  return AppBar(
    toolbarHeight: 75.0,
    elevation: 0,
    backgroundColor: Colors.white,
    leading: Container(
      margin: const EdgeInsets.only(left: 10.0),
      child: Image.asset(
        'assets/images/logo.png',
        fit: BoxFit.contain,
        width: 50.0,
        height: 50.0,
      ),
    ),
    actions: [
      IconButton(
        icon: Icon(
          Icons.notifications,
          size: 30.0,
          color: Colors.grey[700],
        ),
        onPressed: () {},
      ),
      Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 10.0,
        ),
        child: Container(
          width: 55.0,
          height: 45.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            color: Colors.grey,
          ),
          child: SvgPicture.asset(
            'assets/icons/logo-white.svg',
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    ],
  );
}
