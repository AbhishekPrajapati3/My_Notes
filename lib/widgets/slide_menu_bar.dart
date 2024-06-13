import 'package:flutter/material.dart';
import 'package:my_notes/widgets/colors.dart';

class SlideMenu extends StatefulWidget {
  const SlideMenu({super.key});

  @override
  State<SlideMenu> createState() => _SlideMenuState();
}

class _SlideMenuState extends State<SlideMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: bgColor,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "My Notes",
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Divider(
                  color: Colors.grey,
                ),
               fun("Notes",Icons.lightbulb),
                fun("Archive",Icons.send_and_archive_outlined),
                fun("Settings",Icons.settings)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget fun(String name,IconData iconData)=> Container(

    child: TextButton(
        onPressed: () {},
        child: Row(
          children: [
            Icon(
              iconData,
              color: Colors.white70,
              size: 27,
            ),
            SizedBox(width: 20,),
            Text(name,style: TextStyle(color: Colors.white70,fontSize: 22),)
          ],
        )),
  );
}
