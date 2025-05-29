import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';
import 'package:responsive_dash_board/feautures/home_feature/data/models/user_model.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/fitted_text.dart';

class CustomUserListTile extends StatelessWidget {
  const CustomUserListTile({super.key, required this.user});
  final UserModel user;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 3),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        color: const Color(0XFFFAFAFA),
        elevation: 0,
        child: ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
            shape:
                const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            leading: SvgPicture.asset(
              user.image,
              width: 35,
            ),
            title: FittedText(
                text: user.userName, style: AppStyles.styleSemiBold16),
            subtitle: FittedText(
                text: user.userMail, style: AppStyles.styleRegular12)),
      ),
    );
  }
}
