import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Stateful 상태가 있는 위젯 -> 상태에 따라 위젯이 변경된다
class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> with SingleTickerProviderStateMixin {

  TabController? _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      _buildTabBar(),
      _buildTabBarView(),
    ]);
  }

  Widget _buildTabBar() {
    return TabBar(
        tabs: const [
          Tab(icon: Icon(Icons.directions_car)),
          Tab(icon: Icon(Icons.directions_transit))
        ],
        controller: _tabController);
  }

  Widget _buildTabBarView() {
    return TabBarView(
        controller: _tabController,
        children: [
          Container(color: Colors.green),
          Container(color: Colors.red)
        ],
    );
  }
}
