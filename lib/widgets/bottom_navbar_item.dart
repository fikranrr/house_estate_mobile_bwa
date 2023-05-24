import 'package:flutter/material.dart';

class BottomNavbarItem extends StatelessWidget {
  String name;
  final String imageUrl;
  bool isActive;

  BottomNavbarItem(
      {required this.name, required this.imageUrl, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset(
          this.imageUrl,
          width: 24,
        ),
        SizedBox(
          height: 8,
        ),
        Text(this.name),
        Spacer(),
        isActive
            ? Container(
                width: 30,
                height: 2,
                decoration: BoxDecoration(
                  color: Color(0xffF7AF4B),
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(1000),
                  ),
                ),
              )
            : Container()
      ],
    );
  }
}
