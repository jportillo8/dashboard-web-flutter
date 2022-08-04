import 'package:admin_dashboard/providers/sidemenu_provider.dart';
import 'package:admin_dashboard/router/router.dart';
import 'package:admin_dashboard/services/navigation_service.dart';
import 'package:admin_dashboard/ui/shared/widgets/logo.dart';
import 'package:admin_dashboard/ui/shared/widgets/menu_item.dart';
import 'package:admin_dashboard/ui/shared/widgets/text_separator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Sidebar extends StatelessWidget {
  //
  void navigateTo(String routeName) {
    NavigationService.navigateTo(routeName);
    SideMenuProvider.closeMenu();
  }

  @override
  Widget build(BuildContext context) {
    //
    final sideMenuProvider = Provider.of<SideMenuProvider>(context);
    return Container(
      width: 200,
      height: double.infinity,
      decoration: buildBoxDecoration(),
      child: ListView(
        physics: ClampingScrollPhysics(),
        children: [
          //
          Logo(),
          //
          SizedBox(height: 50),
          //
          TextSeparator(text: 'main'),
          //
          MenuItemw(
              isActive:
                  sideMenuProvider.currentPage == Flurorouter.dashboardRoute,
              text: 'Dashboard',
              icon: Icons.compass_calibration_outlined,
              onPressed: () => navigateTo(Flurorouter.dashboardRoute)),
          MenuItemw(
              text: 'Orders',
              icon: Icons.shopping_cart_checkout_outlined,
              onPressed: () => print('Orders')),
          MenuItemw(
              text: 'Analytic',
              icon: Icons.show_chart_outlined,
              onPressed: () => print('Analytic')),
          MenuItemw(
              text: 'Categories',
              icon: Icons.layers_outlined,
              onPressed: () => print('Categories')),
          MenuItemw(
              text: 'Products',
              icon: Icons.dashboard_outlined,
              onPressed: () => print('Products')),
          MenuItemw(
              text: 'Discount',
              icon: Icons.attach_money_outlined,
              onPressed: () => print('Discount')),
          MenuItemw(
              text: 'Customers',
              icon: Icons.people_alt_outlined,
              onPressed: () => print('Customers')),
          //
          SizedBox(height: 50),
          //
          TextSeparator(text: 'UI Elementes'),
          //
          MenuItemw(
              isActive: sideMenuProvider.currentPage == Flurorouter.iconsRoute,
              text: 'Icons',
              icon: Icons.list_alt_outlined,
              onPressed: () => navigateTo(Flurorouter.iconsRoute)),
          MenuItemw(
              text: 'Marketing',
              icon: Icons.mark_email_read_outlined,
              onPressed: () => print('Categories')),
          MenuItemw(
              text: 'Campaing',
              icon: Icons.note_add_outlined,
              onPressed: () => print('Products')),
          MenuItemw(
              isActive: sideMenuProvider.currentPage == Flurorouter.blankRoute,
              text: 'Blank',
              icon: Icons.post_add_outlined,
              onPressed: () => navigateTo(Flurorouter.blankRoute)),
          //
          SizedBox(height: 50),
          //
          TextSeparator(text: 'Exit'),
          //
          MenuItemw(
              text: 'Logout',
              icon: Icons.exit_to_app_outlined,
              onPressed: () => print('Discount')),
        ],
      ),
    );
  }

  BoxDecoration buildBoxDecoration() => BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff092044),
            Color(0xff092042),
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
          ),
        ],
      );
}
