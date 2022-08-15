import 'package:backpacking/utility/app_layout.dart';
import 'package:backpacking/utility/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class IconTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  const IconTextWidget({Key? key, required this.icon, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(12),
          vertical: AppLayout.getHeight(12)),
      child: Row(
        children: [
           Icon(icon, color: const Color(0xFFBFC2DF)),
          Gap(AppLayout.getWidth(10)),
          Text(text, style: Styles.headLineStyle4),
        ],
      ),
    );
  }
}
