import 'package:admin_dashboard/ui/cards/white_card.dart';
import 'package:admin_dashboard/ui/labels/custom_labes.dart';
import 'package:flutter/material.dart';

class IconsView extends StatelessWidget {
  const IconsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
      physics: ClampingScrollPhysics(),
      children: [
        Text(
          'Icons',
          style: CustomLabels.h1,
        ),
        SizedBox(height: 10),
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.start,
          direction: Axis.horizontal,
          children: [
            WhiteCard(
              width: 170,
              title: 'ac_unit_outlined',
              child: Center(child: Icon(Icons.ac_unit_outlined)),
            ),
            //
            WhiteCard(
              width: 170,
              title: 'ac_unit_outlined',
              child: Center(child: Icon(Icons.ac_unit_outlined)),
            ),

            WhiteCard(
              width: 170,
              title: 'ac_unit_outlined',
              child: Center(child: Icon(Icons.ac_unit_outlined)),
            ),
            WhiteCard(
              width: 170,
              title: 'ac_unit_outlined',
              child: Center(child: Icon(Icons.ac_unit_outlined)),
            ),

            WhiteCard(
              width: 170,
              title: 'ac_unit_outlined',
              child: Center(child: Icon(Icons.ac_unit_outlined)),
            ),

            WhiteCard(
              width: 170,
              title: 'ac_unit_outlined',
              child: Center(child: Icon(Icons.ac_unit_outlined)),
            ),
            //
          ],
        )
      ],
    ));
  }
}
