import 'package:flutter/material.dart';
import 'package:book_nest_life_care/config/app_values.dart';

import 'app_shimmer.dart';

class ProductLoadingShimmerWidget extends StatelessWidget {
  int prodctsCount;
   ProductLoadingShimmerWidget({required this.prodctsCount,super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      key: Key("procutsShimmer"),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: prodctsCount,
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(vertical: AppValues.size_20),
      itemBuilder: (ctx, index) => AppShimmerWidget(
          child: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: Container(
          color: Colors.black.withOpacity(0.4),
        ),
      )),
    );
  }
}
