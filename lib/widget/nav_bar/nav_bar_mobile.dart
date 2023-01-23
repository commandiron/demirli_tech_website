import 'package:flutter/material.dart';

import '../../configs/app_padding.dart';
import '../../configs/app_size.dart';
import '../../configs/app_space.dart';
import '../../provider/drawer_provider.dart';
import 'package:provider/provider.dart';

import 'nav_bar_logo.dart';

class NavBarMobile extends StatelessWidget {
  const NavBarMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final drawerProvider = Provider.of<DrawerProvider>(context);

    return Container(
      width: double.infinity,
      height: AppSize.navBarHeight,
      color: Theme.of(context).navigationBarTheme.backgroundColor,
      padding: AppPadding.navBarPadding,
      child: Row(
        children: [
          IconButton(
            highlightColor: Theme.of(context).colorScheme.onPrimaryContainer,
            onPressed: () {
              drawerProvider.key.currentState!.openDrawer();
            },
            icon: Icon(
              Icons.menu,
              color: Theme.of(context).colorScheme.onPrimaryContainer,
            ),
          ),
          AppSpace.horizontalExpanded!,
          const NavBarLogo()
        ],
      ),
    );
  }
}