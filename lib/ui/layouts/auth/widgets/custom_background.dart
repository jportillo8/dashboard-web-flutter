import 'package:flutter/material.dart';

class CustomBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return (size.width > 1000)
        ? Expanded(child: _getBackgroud())
        : _getBackgroud();
  }

  Container _getBackgroud() {
    return Container(
      // color: Colors.blue,
      decoration: buildBoxDeciration(),
      child: Container(
        constraints: BoxConstraints(maxWidth: 900),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Image(width: 900, image: AssetImage('logom.png')),
          ),
        ),
      ),
    );
  }

  BoxDecoration buildBoxDeciration() {
    return BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover, image: AssetImage('background.png')));
  }
}
