import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_images.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';
import 'package:responsive_dash_board/feautures/home_feature/data/models/user_model.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/custom_user_list_tile.dart';

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
            height: 24,
          ),
          LatestTransactionWidget(),
          SizedBox(
            height: 6,
          ),
          QuickInvoiceListBuilder(), // Corrected ListBuilder here
        ],
      ),
    );
  }
}

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Quick InVoice',
          style: AppStyles.styleSemiBold20,
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.all(15),
          decoration:
              ShapeDecoration(shape: OvalBorder(), color: Color(0XFFFAFAFA)),
          child: Icon(
            Icons.add,
            color: Color(0xFF4EB7F2),
          ),
        )
      ],
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
      height: 60,
      child: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: users.length,
          itemBuilder: (context, index) =>
              IntrinsicWidth(child: CustomUserListTile(user: users[index])),
        ),
      ),
    );
  }
}

class LatestTransactionWidget extends StatelessWidget {
  const LatestTransactionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Last Transaction',
      style: AppStyles.styleRegular16,
    );
  }
}
