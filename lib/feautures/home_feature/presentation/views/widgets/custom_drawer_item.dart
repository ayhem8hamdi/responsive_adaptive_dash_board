import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';
import 'package:responsive_dash_board/feautures/home_feature/data/models/drawer_item_model.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({super.key, required this.item});
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
