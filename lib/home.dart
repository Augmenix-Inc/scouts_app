import 'package:flutter/material.dart';

import 'widgets/drawer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text('Home'),
        leading: IconButton(
          onPressed: () {
            _scaffoldKey.currentState!.openDrawer();
          },
          icon: const Icon(Icons.menu),
        ),
      ),
      drawer: const CustomDrawer(tabIndex: 0),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                CircleAvatar(
                  radius: screenWidth * 0.2,
                  backgroundImage: const AssetImage('assets/logo.jpeg'),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Daksh Thapar',
                  style: Theme.of(context).textTheme.headline2!.copyWith(
                        color: Theme.of(context).textTheme.bodyText1!.color,
                      ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Patrol Leader (Zetta)',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).textTheme.bodyText1!.color,
                      ),
                ),
                Divider(
                  height: 50,
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: screenWidth * 0.8,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      childAspectRatio: screenHeight / screenWidth,
                    ),
                    shrinkWrap: true,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 5, bottom: 5),
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Theme.of(context)
                                  .colorScheme
                                  .primaryContainer,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/logo.jpeg",
                                      height: screenHeight * 0.1,
                                    ),
                                    SizedBox(
                                      width: screenHeight * 0.01,
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          "Name of Badge",
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle1!
                                              .copyWith(
                                                  color: Theme.of(context)
                                                      .textTheme
                                                      .bodyText1!
                                                      .color),
                                        ),
                                        const Text("75% Complete"),
                                        //const Text("123498urhfjekiurthjrek3i4urthrnme"),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),

                /*
              ExpansionTile(
                initiallyExpanded: true,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "BADGES",
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            color: Theme.of(context).textTheme.bodyText1!.color,
                          ),
                    ),
                  ],
                ),
                children: [
                  SizedBox(
                    width: screenWidth * 0.8,
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                      ),
                      shrinkWrap: true,
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color:
                                Theme.of(context).colorScheme.primaryContainer,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),*/

                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
