import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SidebarX(
      showToggleButton: false,
      controller: SidebarXController(selectedIndex: 2, extended: true),
      theme: SidebarXTheme(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(255, 0, 11, 69),
        ),
        textStyle: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        selectedTextStyle:
            const TextStyle(color: Color.fromARGB(255, 208, 255, 0)),
        itemTextPadding: const EdgeInsets.only(left: 30),
        selectedItemTextPadding: const EdgeInsets.only(left: 30),
        iconTheme: const IconThemeData(
          color: Color.fromARGB(255, 0, 136, 255),
          size: 20,
        ),
      ),
      extendedTheme: const SidebarXTheme(
        width: 200,
        margin: EdgeInsets.only(right: 10),
      ),
      headerBuilder: (context, extended) {
        return SafeArea(
          child: SizedBox(
            height: 100,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset('assets/logo.jpeg'),
            ),
          ),
        );
      },
      items: [
        SidebarXItem(
          icon: Icons.home,
          label: 'Home',
          onTap: () {},
        ),
        SidebarXItem(
          icon: Icons.person,
          label: 'Profile',
          onTap: () {},
        ),
        SidebarXItem(
          icon: Icons.settings,
          label: 'Settings',
          onTap: () {},
        ),
        SidebarXItem(
          icon: Icons.logout,
          label: 'Logout',
          onTap: () {},
        ),
      ],
    );
  }
}
