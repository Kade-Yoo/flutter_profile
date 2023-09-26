import 'package:flutter/material.dart';
import 'package:flutter_profile/components/profile_buttons.dart';
import 'package:flutter_profile/components/profile_navigation_bar.dart';
import 'package:flutter_profile/components/profile_count_info.dart';
import 'package:flutter_profile/components/profile_drawer.dart';
import 'package:flutter_profile/components/profile_header.dart';
import 'package:flutter_profile/components/proflie_tab.dart';
import 'package:flutter_profile/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const ProfileDrawer(),
      appBar: _buildProfileAppBar(),
      body: NestedScrollView(   // 전체 페이지 스크롤됨
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverList(
              delegate: SliverChildListDelegate([
                const SizedBox(height: 20),
                const ProfileHeader(),
                const SizedBox(height: 20),
                const ProfileCountInfo(),
                const SizedBox(height: 5),
              ]),
            ),
          ];
        },
        body: const ProfileTab(),
      ),
      bottomNavigationBar: const ProfileNavigationBar()
    );
  }

  AppBar _buildProfileAppBar() {
    int counter = 0;
    return AppBar(
      backgroundColor: Colors.purple,
      title: const Text("마이페이지"),
      centerTitle: false,
      actions: [
        IconButton(
          icon: Stack(
            children: [
              const Icon(Icons.notifications),
              Positioned(
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  constraints: const BoxConstraints(
                    minWidth: 12,
                    minHeight: 12,
                  ),
                  child: Text(
                    '$counter',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 8,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          ),
          // const Icon(Icons.notification_add),
          tooltip: 'Open shopping cart',
          onPressed: () {
            // handle the press
            print("장바구니 입니다.");
          },
        ),
        IconButton(
          icon: const Icon(Icons.settings_outlined),
          onPressed: () {
            // handle the press
          },
        ),
      ],
    );
  }
}
