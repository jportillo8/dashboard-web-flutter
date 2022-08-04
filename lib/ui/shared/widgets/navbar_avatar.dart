import 'package:flutter/material.dart';

class NavbarAvatar extends StatelessWidget {
  const NavbarAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        child: Image.network(
          'https://images2-mega.cdn.mdstrm.com/etcetera/2021/03/12/14632_1_604be557858e1.jpg?d=500x500',
          width: 30,
          height: 30,
        ),
      ),
    );
  }
}
