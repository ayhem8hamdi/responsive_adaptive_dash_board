import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';
import 'package:responsive_dash_board/feautures/home_feature/presentation/views/widgets/fitted_text.dart';

class CardItemBody extends StatelessWidget {
  const CardItemBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 31, right: 42, top: 16),
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            title: FittedText(
              text: 'Name card',
              style: AppStyles.styleRegular16.copyWith(color: Colors.white),
            ),
            subtitle: FittedText(
              text: 'Ayhem Hamdi',
              style: AppStyles.styleMedium20.copyWith(color: Colors.white),
            ),
            trailing: const Icon(Icons.image, color: Colors.white),
          ),
        ),
        const Spacer(),
        Row(
          children: [
            const Expanded(child: SizedBox()),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      FittedText(
                        text: '0918 8124 0042 8129',
                        style: AppStyles.styleSemiBold24
                            .copyWith(color: Colors.white),
                      ),
                      const SizedBox(height: 9),
                      FittedText(
                        text: r'12\20 - 124',
                        style: AppStyles.styleRegular16
                            .copyWith(color: Colors.white),
                      ),
                      const SizedBox(
                        height: 26,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
