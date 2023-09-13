import 'package:flutter/material.dart';
import 'package:snack_app/colors.dart';
import 'package:snack_app/models/cookies.dart';
import 'package:snack_app/pages/home/widgets/container_arrow.dart';
import 'package:snack_app/pages/home/widgets/premium.dart';

class CookieCard extends StatelessWidget {
  CookieCard({super.key, required this.cookie});

  final Cookie cookie;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var cookieSize = size.height * 0.16;
    var cardSize = size.height * 0.20;

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: cardSize,
          width: cardSize,
          decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(75),
            ),
          ),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 16, top: 32, bottom: 16, right: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cookie.name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Premium(),
                Text(
                  "20 usd",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
          top: -(cookieSize - 32),
          left: (cardSize - cookieSize) / 2,
          child: SizedBox(
            height: cookieSize,
            width: cookieSize,
            child: Image.asset(cookie.image),
          ),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: ContainerArrow(),
        ),
      ],
    );
  }
}
