import 'package:flutter/material.dart';

class ProfileNavigationBar extends StatelessWidget {
  const ProfileNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildNavigationBar();
  }

  NavigationBar _buildNavigationBar() {
    return NavigationBar(
      indicatorColor: Colors.amber[800],
      destinations: const <Widget>[
        NavigationDestination(
          icon: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        NavigationDestination(
          icon: Icon(Icons.chat_bubble),
          label: 'Chat',
        ),
        NavigationDestination(
          icon: Icon(Icons.add_box_sharp),
          label: 'Add',
        ),
        NavigationDestination(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        NavigationDestination(
          icon: Icon(Icons.person),
          label: 'MY',
        ),
      ],
    );
  }
}
