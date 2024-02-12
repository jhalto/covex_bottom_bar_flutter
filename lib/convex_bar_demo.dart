import 'package:convex_bar_demo/widgets/apps_demo.dart';
import 'package:convex_bar_demo/widgets/call_demo.dart';
import 'package:convex_bar_demo/widgets/contact_demo.dart';
import 'package:convex_bar_demo/widgets/homepage.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class ConvexBarDemo extends StatefulWidget {
  const ConvexBarDemo({super.key});

  @override
  State<ConvexBarDemo> createState() => _ConvexBarDemoState();
}

class _ConvexBarDemoState extends State<ConvexBarDemo> {
  List<Widget> pages = [HomePage(),CallDemo(),AppsDemo(),ContactDemo()];
  int index =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Convex Bar"),

      ),
      body: pages[index],
      bottomNavigationBar: ConvexAppBar(
       top: -10,




        initialActiveIndex: index,
         activeColor: Colors.white,
         style: TabStyle.react,
         backgroundColor: Colors.black,
         curveSize: 50,
         shadowColor: Colors.blue,



      onTap: (val){
          setState(() {
            index=val;
          });
      },
          items: [
        TabItem(icon: Icon(Icons.home,color: Colors.orange,)),
        TabItem(icon: Icon(Icons.call,color: Colors.orange)),
        TabItem(icon: Icon(Icons.apps,color: Colors.orange)),
        TabItem(icon: Icon(Icons.contacts,color: Colors.orange)),
      ]),

    );
  }
}
