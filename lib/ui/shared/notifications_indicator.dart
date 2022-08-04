import 'package:flutter/material.dart';

class NotificationsIndicator extends StatelessWidget {
  const NotificationsIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(children: [
        Icon(Icons.notifications_none_outlined, color: Colors.grey),
        Positioned(
            left: 2,
            child: Container(
                height: 6, width: 6, decoration: buildBoxDecoration()))
      ]),
    );
  }

  BoxDecoration buildBoxDecoration() => BoxDecoration(
      color: Colors.red, borderRadius: BorderRadius.circular(100));
}
