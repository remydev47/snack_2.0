import 'package:flutter/material.dart';
import 'package:snack_app/colors.dart';
import 'package:snack_app/pages/home/widgets/container_arrow.dart';
import 'package:snack_app/pages/home/widgets/premium.dart';

class HorizontalCard extends StatelessWidget {
  const HorizontalCard({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height * 0.14,
          decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(75),
            ),
          ),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(16),
                child: Image.asset(
                  "assets/2.png",
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Double Choco",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Premium(),
                      ],
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "20 USD",
                            style: TextStyle(
                              color: Colors.orangeAccent,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ])
                  ],
                ),
              )
            ],
          ),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: ContainerArrow(),
        )
      ],
    );
  }
}
