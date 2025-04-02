import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_images.dart';
import 'package:responsive_dash_board/feautures/home_feature/data/models/drawer_item_model.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/custom_drawer_item.dart';

class ItemsList extends StatefulWidget {
  const ItemsList({super.key});

  @override
  State<ItemsList> createState() => _ItemsListState();
}

class _ItemsListState extends State<ItemsList> {
  int activeIndex = -1;
  final List<DrawerItemModel> items = const [
    DrawerItemModel(image: AppAssets.dashboard, title: 'Dashboard'),
    DrawerItemModel(image: AppAssets.transaction, title: 'My Transaction'),
    DrawerItemModel(image: AppAssets.statistics, title: 'Statistics'),
    DrawerItemModel(image: AppAssets.wallet, title: 'Wallet Account'),
    DrawerItemModel(image: AppAssets.investment, title: 'My Investments'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: items.length,
        itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                setState(() {
                  activeIndex = index;
                });
              },
              child: CustomDrawerItem(
                item: items[index],
                isActive: activeIndex == index,
              ),
            ));
  }
}
