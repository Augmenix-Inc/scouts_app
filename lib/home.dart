import 'package:flutter/material.dart';
import 'package:scouts_app/widgets/drawer.dart';
import 'package:sidebarx/sidebarx.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              scaffoldKey.currentState!.openDrawer();
            },
            icon: const Icon(Icons.menu)),
      ),
      drawer: const CustomDrawer(),
      body: Center(
        child: Column(
          children: [
            CircleAvatar(
              radius: screenWidth * 0.2,
              backgroundImage: const AssetImage('assets/logo.jpeg'),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Daksh Thapar',
              style: Theme.of(context).textTheme.headline2!.copyWith(
                    color: Theme.of(context).textTheme.bodyText1!.color,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
