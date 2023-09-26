import 'package:flutter/material.dart';

class ProfileCountInfo extends StatelessWidget {
  const ProfileCountInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildInfo("팔로워", "150"),
            _buildLine(),
            _buildInfo("팔로잉", "999"),
          ],
        ),
      ),
    );
  }

  Widget _buildInfo(String count, String title) {
    return Column(
      children: [
        Text(
          count,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget _buildLine() {
    return Container(
      color: Colors.white54,
      height: 70,
      width: 2,
    );
  }
}
