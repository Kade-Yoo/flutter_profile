import 'package:flutter/material.dart';
import 'package:flutter_profile/components/profile_buttons.dart';
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
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

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
                SizedBox(height: 20),
                ProfileHeader(),
                SizedBox(height: 20),
                ProfileCountInfo(),
                SizedBox(height: 20),
                ProfileButtons()
              ]),
            ),
          ];
        },
        body: ProfileTab(),
      ),
    );
  }

  AppBar _buildProfileAppBar() {
    return AppBar(
      leading: const Icon(Icons.arrow_back_ios),
      title: const Text("Profile"),
      actions: [
        IconButton(
          icon: const Icon(Icons.shopping_cart),
          tooltip: 'Open shopping cart',
          onPressed: () {
            // handle the press
            print("장바구니 입니다.");
          },
        ),
      ],
      centerTitle: true,
    );
  }
}
