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
        const SizedBox(width: 80),
        _buildFllowButton(),
      ],
    );
  }

  Widget _buildHeaderAvatar() {
    return const SizedBox(
      width: 50,
      height: 50,
      child: CircleAvatar(    // 프로필을 표현할 때 CircleAvatar를 사용하는게 좋음
        backgroundImage: AssetImage("assets/kade.jpg"), // AssetImage Size를 조절할 수 있는 클래스가 있는지 확인 필요
      ),
    );
  }

  Widget _buildHeaderProfile() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Kade",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          "안녕하세요. 케이드입니다~",
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      ],
    );
  }

  Widget _buildFllowButton() {
    return InkWell(
      onTap: () {
        print("Follow 버튼 클릭됨");
      },
      child: Container(
        alignment: Alignment.center,
        width: 80,
        height: 30,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.black)
        ),
        child: const Text("프로필 수정", style: TextStyle(color: Colors.black)),
      ),
    );
  }
}
