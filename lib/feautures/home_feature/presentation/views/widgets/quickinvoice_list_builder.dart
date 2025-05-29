import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_images.dart';
import 'package:responsive_dash_board/feautures/home_feature/data/models/user_model.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/custom_user_list_tile.dart';

class QuickInvoiceListBuilder extends StatelessWidget {
  const QuickInvoiceListBuilder({super.key});
  static const List<UserModel> users = [
    UserModel(
        image: AppAssets.avatar1,
        userName: 'Mouhamed Hamdi',
        userMail: 'midou36@gmail.com'),
    UserModel(
        image: AppAssets.avatar1,
        userName: 'Ayhem Hamdi',
        userMail: 'ayhemhamdi24@gmail.com'),
    UserModel(
        image: AppAssets.avatar2,
        userName: 'Jesser Hamdi',
        userMail: 'jesser24@gmail.com'),
    UserModel(
        image: AppAssets.avatar1,
        userName: 'Mouhamed Hamdi',
        userMail: 'midou36@gmail.com'),
    UserModel(
        image: AppAssets.avatar1,
        userName: 'Ayhem Hamdi',
        userMail: 'ayhemhamdi24@gmail.com'),
    UserModel(
        image: AppAssets.avatar1,
        userName: 'Ayhem Hamdi',
        userMail: 'ayhemhamdi24@gmail.com'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        padding: const EdgeInsets.all(0),
        scrollDirection: Axis.horizontal,
        itemCount: users.length,
        itemBuilder: (context, index) =>
            IntrinsicWidth(child: CustomUserListTile(user: users[index])),
      ),
    );
  }
}
