import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feautures/home_feature/data/models/all_expanses_item_model.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/all_expanses_item_logo.dart';

class AllExpansesCustomCard extends StatelessWidget {
  const AllExpansesCustomCard(
      {super.key, required this.image, required this.item});
  final String image;
  final AllExpansesItemModel item;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            width: 1,
            color: const Color(0xFFF1F1F1),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpansesItemLogo(
            image: image,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(item.type),
          const SizedBox(height: 5),
          Text(item.date),
          const SizedBox(
            height: 9,
          ),
          Text(item.price)
        ],
      ),
    ));
  }
}
