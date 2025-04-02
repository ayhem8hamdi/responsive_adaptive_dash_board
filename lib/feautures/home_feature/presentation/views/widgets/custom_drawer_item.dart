import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/core/utils/app_colors.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';
import 'package:responsive_dash_board/feautures/home_feature/data/models/drawer_item_model.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem(
      {super.key, required this.item, required this.isActive});
  final DrawerItemModel item;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child:
          isActive ? ActiveListTile(item: item) : InactiveListTile(item: item),
    );
  }
}

class InactiveListTile extends StatelessWidget {
  const InactiveListTile({
    super.key,
    required this.item,
  });

  final DrawerItemModel item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(item.image),
      title: Text(
        item.title,
        style: AppStyles.styleRegular16,
      ),
    );
  }
}

class ActiveListTile extends StatelessWidget {
  const ActiveListTile({
    super.key,
    required this.item,
  });

  final DrawerItemModel item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Container(
        width: 4,
        color: AppColors.kSecondaryColor,
      ),
      leading: SvgPicture.asset(item.image),
      title: Text(
        item.title,
        style: AppStyles.styleBold16,
      ),
    );
  }
}
