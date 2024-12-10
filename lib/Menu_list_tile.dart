import 'package:bottom_navi_bar/Birthday.dart';
import 'package:bottom_navi_bar/gratitude.dart';
import 'package:bottom_navi_bar/reminder.dart';
import 'package:flutter/material.dart';

class MenuListTile extends StatelessWidget {
  const MenuListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const Icon(Icons.cake),
          title: const Text('Birthdays'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Birthday(),
                ));
          },
        ),
        const Divider(color: Colors.grey),
        ListTile(
          leading: const Icon(Icons.sentiment_satisfied),
          title: const Text('Gratitudes'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Gratitude(),
                ));
          },
        ),
         const Divider(color: Colors.grey),
        ListTile(
          leading: const Icon(Icons.access_alarm),
          title: const Text('Reminders'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Reminder(),
                ));
          },
        ),
         const Divider(color: Colors.grey),
        ListTile(
          leading: const Icon(Icons.settings),
          title: const Text('Settings'),
          onTap: (){

          },
        ),
      ],
    );
  }
}
