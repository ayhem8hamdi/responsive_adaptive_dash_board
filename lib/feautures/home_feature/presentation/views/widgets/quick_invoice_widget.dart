import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_images.dart';
import 'package:responsive_dash_board/feautures/home_feature/data/models/user_model.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/custom_horiz_line.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/custom_user_list_tile.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/last_transaction_section.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/quick_invoice_header.dart';

class QuickInvoiceWidget extends StatelessWidget {
  const QuickInvoiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          SizedBox(
            height: 14,
          ),
          LatestTransactionWidget(),
          SizedBox(
            height: 20,
          ),
          QuickInvoiceListBuilder(),
          SizedBox(
            height: 20,
          ),
          CustomHorizLine()
        ],
      ),
    );
  }
}

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
