import 'package:flutter/material.dart';

class OffersBar extends StatelessWidget {
  const OffersBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Cookies",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
          ),
        ),
        Text(
          "see more",
          style: TextStyle(
            color: Colors.orange,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
