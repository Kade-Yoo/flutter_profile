import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 20),
        _buildHeaderAvatar(),
        const SizedBox(width: 20),
        _buildHeaderProfile(),
      ],
    );
  }

  Widget _buildHeaderAvatar() {
    return const SizedBox(
      width: 100,
      height: 100,
      child: CircleAvatar(    // 프로필을 표현할 때 CircleAvatar를 사용하는게 좋음
        backgroundImage: AssetImage("assets/avatar.png"), // AssetImage Size를 조절할 수 있는 클래스가 있는지 확인 필요
      ),
    );
  }

  Widget _buildHeaderProfile() {
    return const Column(
      children: [
        Text(
          "Kade",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700
          ),
        ),
        Text(
          "Programmer",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        Text(
          "Backend Engineer",
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
