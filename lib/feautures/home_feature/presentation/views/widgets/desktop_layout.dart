import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/core/utils/app_images.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CustomDrawer(),
      ],
    );
  }
}

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 400,
      color: Colors.white,
      child: const Column(
        children: [
          CustomUserListTile(
            image: AppAssets.avatar1,
            userName: 'Ayhem Hamdi',
            userMail: 'ayhemhamdi24@gmail.com',
          )
        ],
      ),
    );
  }
}

class CustomUserListTile extends StatelessWidget {
  const CustomUserListTile(
      {super.key,
      required this.image,
      required this.userName,
      required this.userMail});
  final String image;
  final String userName;
  final String userMail;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: ListTile(
        leading: SvgPicture.asset(image),
        title: Text(
          userName,
          style: AppStyles.styleSemiBold16,
        ),
        subtitle: Text(
          userMail,
          style: AppStyles.styleRegular12,
        ),
      ),
    );
  }
}
