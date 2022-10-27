import 'package:flutter/material.dart';
import 'package:scouts_app/signin.dart';
import 'package:sidebarx/sidebarx.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SidebarX(
      showToggleButton: false,
      controller: SidebarXController(selectedIndex: 0, extended: true),
      theme: SidebarXTheme(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0),
          color: Theme.of(context).colorScheme.onSecondary,
        ),
        selectedTextStyle: TextStyle(
          color: Theme.of(context).colorScheme.primary,
          fontSize: 18,
        ),
        itemTextPadding: const EdgeInsets.only(left: 30),
        selectedItemTextPadding: const EdgeInsets.only(left: 30),
        iconTheme: IconThemeData(
          color: Theme.of(context).colorScheme.outline,
          size: 18,
        ),
        selectedIconTheme: IconThemeData(
          color: Theme.of(context).colorScheme.primary,
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
      footerBuilder: (context, extended) => SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Divider(
              color: Colors.grey,
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text('For Scouts By Scouts'),
            ),
          ],
        ),
      ),
      items: [
        SidebarXItem(
          label: 'Home',
          onTap: () {},
          iconWidget: const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Icon(Icons.home),
          ),
        ),
        SidebarXItem(
          label: 'Profile',
          onTap: () {},
          iconWidget: const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Icon(Icons.person),
          ),
        ),
        SidebarXItem(
          label: 'Setting',
          onTap: () {},
          iconWidget: const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Icon(Icons.settings),
          ),
        ),
        SidebarXItem(
          label: 'Logout',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SignIn(),
              ),
            );
          },
          iconWidget: const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Icon(Icons.logout),
          ),
        ),
      ],
    );
  }
}