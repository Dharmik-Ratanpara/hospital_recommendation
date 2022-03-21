import 'package:flutter/material.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({
    Key? key,
  }) : super(key: key);

  Widget buildListTile(
          BuildContext context, final String title, final IconData icon) =>
      ListTile(
        leading: Icon(icon),
        title: Text(title),
        onTap: () => Navigator.pop(context),
      );

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: Column(
              children: [
                Flexible(
                  fit: FlexFit.loose,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    child: const CircleAvatar(
                      radius: 100,
                      child: Icon(
                        Icons.person,
                        size: 50,
                      ),
                    ),
                  ),
                ),
                const Text(
                  'Dharmik',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          buildListTile(
            context,
            'My Profile',
            Icons.person,
          ),
          buildListTile(
            context,
            'Home',
            Icons.home,
          ),
          buildListTile(
            context,
            'History',
            Icons.history,
          ),
          buildListTile(
            context,
            'Call Ambulance',
            Icons.call,
          ),
        ],
      ),
    );
  }
}
