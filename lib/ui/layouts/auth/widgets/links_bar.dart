import 'package:admin_dashboard/ui/buttons/link_text.dart';
import 'package:flutter/material.dart';

class LinksBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        height: (size.width > 1000) ? size.height * 0.1 : null,
        color: Colors.black,
        child: Wrap(alignment: WrapAlignment.center, children: [
          LinkText(text: 'About'),
          LinkText(text: 'About'),
          LinkText(text: 'About'),
          LinkText(text: 'About'),
          LinkText(text: 'About'),
          LinkText(text: 'About'),
          LinkText(text: 'About'),
          LinkText(text: 'About'),
          LinkText(text: 'About'),
          LinkText(text: 'About'),
        ]));
  }
}
