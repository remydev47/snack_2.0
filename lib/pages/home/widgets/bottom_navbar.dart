import 'package:flutter/material.dart';
import 'package:snack_app/colors.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 60,
        decoration: BoxDecoration(
          color: navBarcolor,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(45),
          ),
        ),
      ),
    ]);
  }
}
