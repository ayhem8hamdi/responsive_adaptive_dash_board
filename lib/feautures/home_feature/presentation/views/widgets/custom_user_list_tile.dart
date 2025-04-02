import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';
import 'package:responsive_dash_board/feautures/home_feature/data/models/user_model.dart';

class CustomUserListTile extends StatelessWidget {
  const CustomUserListTile({super.key, required this.user});
  final UserModel user;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0XFFFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(
          user.image,
          width: 35,
        ),
        title: Text(
          user.userName,
          style: AppStyles.styleSemiBold16,
        ),
        subtitle: Text(
          user.userMail,
          style: AppStyles.styleRegular12,
        ),
      ),
    );
  }
}
