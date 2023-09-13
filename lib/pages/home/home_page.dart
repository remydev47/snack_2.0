import 'package:flutter/material.dart';
import 'package:snack_app/colors.dart';
import 'package:snack_app/models/cookies.dart';
import 'package:snack_app/pages/home/widgets/OffersBar.dart';
import 'package:snack_app/pages/home/widgets/avatar_widget.dart';
import 'package:snack_app/pages/home/widgets/bottom_navbar.dart';
import 'package:snack_app/pages/home/widgets/cart_widget.dart';
import 'package:snack_app/pages/home/widgets/cookie_card.dart';
import 'package:snack_app/pages/home/widgets/horizontal_widget.dart';
import 'package:snack_app/pages/home/widgets/personal_widget.dart';
import 'package:snack_app/pages/home/widgets/cookie_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: background,
        body: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 60,
            horizontal: 24,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AvatarWidget(),
                      SizedBox(
                        width: 16,
                      ),
                      ProfileWidget(),
                      // Spacer(),
                      SizedBox(
                        width: 136,
                      ),
                      CartWidget(),
                    ],
                  ),
                ],
              ),
              CookieBar(),
              SizedBox(
                height: size.height * 0.12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: cookies.map((e) => CookieCard(cookie: e)).toList(),
              ),
              SizedBox(
                height: 16,
              ),
              OffersBar(),
              HorizontalCard()
            ],
          ),
        ),
        bottomNavigationBar: BottomNavBar());
  }
}
