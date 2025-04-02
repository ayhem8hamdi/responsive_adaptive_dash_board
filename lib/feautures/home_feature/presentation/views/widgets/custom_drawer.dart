import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_images.dart';
import 'package:responsive_dash_board/feautures/home_feature/data/models/drawer_item_model.dart';
import 'package:responsive_dash_board/feautures/home_feature/data/models/user_model.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/custom_drawer_item.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/custom_user_list_tile.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/items_list.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: CustomUserListTile(
              user: UserModel(
                  image: AppAssets.avatar1,
                  userName: 'Ayhem Hamdi',
                  userMail: 'ayhemhamdi24@gmail.com'),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 8)),
          ItemsList(),
          SliverFillRemaining(
            hasScrollBody: false,
            fillOverscroll: false,
            child: Column(
              children: [
                Expanded(child: SizedBox()),
                InactiveListTile(
                  item: DrawerItemModel(
                      image: AppAssets.settings, title: 'Settings'),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: InactiveListTile(
                    item: DrawerItemModel(
                        image: AppAssets.logout, title: 'LogOut'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
