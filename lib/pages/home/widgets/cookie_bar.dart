import 'package:flutter/material.dart';

class CookieBar extends StatelessWidget {
  const CookieBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          children: [
            Text(
              "Cookies",
              style: TextStyle(color: Colors.white, fontSize: 42),
            ),
            Text(
              "Premium",
              style: TextStyle(color: Colors.orange, fontSize: 30),
            )
          ],
        ),
        Text(
          "See More",
          style: TextStyle(color: Colors.orange, fontSize: 15),
        ),
      ],
    );
  }
}
