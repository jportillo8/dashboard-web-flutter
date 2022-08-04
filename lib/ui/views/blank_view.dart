import 'package:admin_dashboard/ui/cards/white_card.dart';
import 'package:admin_dashboard/ui/labels/custom_labes.dart';
import 'package:flutter/material.dart';

class BlankView extends StatelessWidget {
  const BlankView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
      physics: ClampingScrollPhysics(),
      children: [
        Text(
          'Blank View',
          style: CustomLabels.h1,
        ),
        SizedBox(height: 10),
        WhiteCard(
          title: 'Blank View',
          child: Text('Developer Blank'),
        ),
      ],
    ));
  }
}
