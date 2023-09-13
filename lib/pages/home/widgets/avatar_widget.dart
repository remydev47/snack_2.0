import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 25,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        backgroundImage: AssetImage("assets/user.png"),
        radius: 25,
      ),
    );
  }
}
