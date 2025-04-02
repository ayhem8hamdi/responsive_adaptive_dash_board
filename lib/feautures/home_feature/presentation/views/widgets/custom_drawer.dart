import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_images.dart';
import 'package:responsive_dash_board/feautures/home_feature/data/models/user_model.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/custom_user_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Column(
        children: [
          CustomUserListTile(
            user: UserModel(
                image: AppAssets.avatar1,
                userName: 'Ayhem Hamdi',
                userMail: 'ayhemhamdi24@gmail.com'),
          ),
          SizedBox(height: 8)
        ],
      ),
    );
  }
}

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile();
  }
}
