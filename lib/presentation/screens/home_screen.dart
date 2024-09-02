
import 'package:flutter/material.dart';
import 'package:responsiveui1/presentation/widget/responsive_builder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(mobile: Scaffold(
        appBar: AppBar(
          title: const Text('Home',style: TextStyle(
              color: Colors.white
          ),),
          backgroundColor: Colors.pink,
        ),
        drawer: Drawer(
          child: SafeArea(
            child: Column(
              children: [
                ListTile(
                  title: Text('Home'),
                  tileColor: Colors.grey,
                ),
                ListTile(
                  title: Text('Products'),
                  tileColor: Colors.pink,
                ),
                ListTile(
                  title: Text('Stock'),
                ),
                ListTile(
                  title: Text('Bills'),
                ),
                ListTile(
                  title: Text('Settings'),
                ),
              ],

            ),
          ),
        ),
        body: ResponsiveBuilder(
          mobile: Center(
            child: Column(
              children: [
                Wrap(
                  alignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text('FLUTTER WEB',style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 30,),),
                    Text('THE BASICS',style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 30,),)
                  ],

                )
              ],
            ),
          ),
          tablet: Center(
            child: Text('FLUTTER WEB THE BASICS'),
          ),
          desktop: Center(
            child: Column(
              children: [
                Wrap(
                  alignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text('FLUTTER WEB',style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 50,),),
                    Text('THE BASICS',style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 50,),)
                  ],

                )
              ],
            ),
          ),
        )
    ), desktop: Scaffold(
        appBar: AppBar(
          title: const Text('Desktop',style: TextStyle(
              color: Colors.white
          ),),
          backgroundColor: Colors.pink,
        ),
        body: Row(
          children: [
            Expanded(child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("FLUTTER WEB "),
                  Text("THE BASIC")
                ],
              )
            ))
          ],
        )
    ));
  }
}
