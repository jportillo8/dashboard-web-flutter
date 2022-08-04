import 'package:admin_dashboard/providers/sidemenu_provider.dart';
import 'package:admin_dashboard/ui/shared/navbar.dart';
import 'package:admin_dashboard/ui/shared/sidebar.dart';
import 'package:flutter/material.dart';

class DashboarLayout extends StatefulWidget {
  final Widget child;

  const DashboarLayout({super.key, required this.child});

  @override
  State<DashboarLayout> createState() => _DashboarLayoutState();
}

class _DashboarLayoutState extends State<DashboarLayout>
    with SingleTickerProviderStateMixin {
  //
  @override
  void initState() {
    SideMenuProvider.menuController = new AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xffEDF1F2),
      body: Stack(
        children: [
          Row(
            children: [
              //
              if (size.width >= 700) Sidebar(),
              Expanded(
                child: Column(
                  children: [
                    Navbar(),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: widget.child,
                    )),
                  ],
                ),
              ),
            ],
          ),
          // Condicion para que se muestre encima
          // if (size.width < 700) Sidebar(),
          if (size.width < 700)
            AnimatedBuilder(
              animation: SideMenuProvider.menuController,
              builder: (context, _) => Stack(
                children: [
                  //Background
                  if (SideMenuProvider.isOpen)
                    AnimatedOpacity(
                      opacity: SideMenuProvider.opacity.value,
                      duration: Duration(milliseconds: 200),
                      child: GestureDetector(
                        onTap: (() => SideMenuProvider.closeMenu()),
                        child: Container(
                          color: Colors.black26,
                          width: size.width,
                          height: size.height,
                        ),
                      ),
                    ),
                  Transform.translate(
                    offset: Offset(SideMenuProvider.movement.value, 0),
                    child: Sidebar(),
                  )
                ],
              ),
            )
        ],
      ),
    );
  }
}
