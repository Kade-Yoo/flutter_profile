import 'package:flutter/material.dart';

class ProfileButtons extends StatelessWidget {
  const ProfileButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildFllowButton(),
          _buildMessageButton()
        ]
    );
  }

  Widget _buildFllowButton() {
    return InkWell(
      onTap: () {
        print("Follow 버튼 클릭됨");
      },
      child: Container(
        alignment: Alignment.center,
        width: 150,
        height: 45,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10)
        ),
        child: const Text("Fllow", style: TextStyle(color: Colors.white)),
      ),
    );
  }

  Widget _buildMessageButton() {
    return Container(
      alignment: Alignment.center,
      width: 150,
      height: 45,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all()
      ),
      child: const Text("Message", style: TextStyle(color: Colors.black)),
    );
  }
}
