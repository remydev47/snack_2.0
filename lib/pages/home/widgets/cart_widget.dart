import 'package:flutter/material.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none, children: [
      Container(
        height: 85,
        width: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Column(
          children: [
            Text(
              "6",
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Products",
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      Positioned(
        top: -20,
        left: 80 / 4,
        child: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black,
          ),
          child: Icon(
            Icons.shopping_bag_outlined,
            color: Colors.white,
          ),
        ),
      )
    ]);
  }
}
