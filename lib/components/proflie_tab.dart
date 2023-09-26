import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile/components/profile_navigation_bar.dart';
import 'package:table_calendar/table_calendar.dart';

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
      const SizedBox(height: 20),
      _buildCalendarBar(),
      const SizedBox(height: 20),
      Expanded(child: _buildTabBarView()),
    ]);
  }

  Widget _buildTabBar() {
    return TabBar(
        tabs: const [
          Tab(icon: Text("갤러리", style: TextStyle(fontWeight: FontWeight.bold))),
          Tab(icon: Text("타임라인", style: TextStyle(fontWeight: FontWeight.bold)))
        ],
        indicatorWeight: 4.0,
        indicatorColor: Colors.purple,
        labelColor: Colors.purple,
        unselectedLabelColor: Colors.grey,
        controller: _tabController);
  }

  Widget _buildCalendarBar() {
    return Container(
        width: 150,
        child: const Row(
          children: [
            Text("2022년 12월",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold)
            ),
          ],
        )
    );
  }

  Widget _buildTabBarView() {
    return TabBarView(
      controller: _tabController,
      children: [
        GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ), itemBuilder: (context, index) {
          return Image.network("https://picsum.photos/id/${index + 1}/200/200", scale: 0.1,);
        }),
        TableCalendar(focusedDay: DateTime.now(), firstDay: DateTime.now(), lastDay: DateTime.now())
      ],
    );
  }
}
