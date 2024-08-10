import 'package:book_nest_life_care/app/ui/custom_widget/toggle_widget/toggle_cubit.dart';
import 'package:book_nest_life_care/config/app_colors.dart';
import 'package:book_nest_life_care/config/text_styles.dart';
import 'package:book_nest_life_care/utils/extensions.dart';
import 'package:book_nest_life_care/utils/ui_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ToggleRowItem extends StatefulWidget {
  const ToggleRowItem({super.key, required this.cubit});

  final ToggleCubit cubit;

  @override
  _ToggleRowItemState createState() => _ToggleRowItemState();
}

class _ToggleRowItemState extends State<ToggleRowItem> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: widget.cubit.items.length, vsync: this);
    _tabController.addListener(() {
      if (_tabController.indexIsChanging) {
        widget.cubit.selectItem(_tabController.index);
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ToggleCubit, int>(
      bloc: widget.cubit,
      builder: (context, selectedIndex) {
        _tabController.index = selectedIndex;

        return Column(
          children: [
            TabBar(
              controller: _tabController,
              isScrollable: /*widget.cubit.items.length > 3*/true,
              tabAlignment: TabAlignment.start,
              labelColor: AppColors.colorPrimary,
              labelPadding:
              const EdgeInsets.symmetric(horizontal: 18),
              dividerHeight: 1,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 3,
              tabs: widget.cubit.items.map((item) {
                final int index = widget.cubit.items.indexOf(item);
                return Tab(
                  child: Center(
                    child: Text(
                      item,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: h14(
                        fontWeight: FontWeight.w700,
                        color: index == selectedIndex
                            ? AppColors.colorPrimary
                            : AppColors.grey77,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
            // Expanded(
            //   child: TabBarView(
            //     controller: _tabController,
            //     children: widget.cubit.items.map((item) {
            //       return Center(
            //         child: Text(item),
            //       ); // Replace this with your actual content
            //     }).toList(),
            //   ),
            // ),
          ],
        );
      },
    );
  }
}

// class ToggleRowItem extends StatelessWidget {
//   const ToggleRowItem({super.key, required this.cubit});
//
//   final ToggleCubit cubit;
//
//   @override
//   Widget build(BuildContext context) {
//     return cubit.items.length > 3
//         ? SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child: rowItem(),
//           )
//         : rowItem();
//   }
//
//   Widget rowItem() {
//     return BlocBuilder<ToggleCubit, int>(
//       bloc: cubit,
//       builder: (context, selectedIndex) {
//         return Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Container(
//               height: 34,
//               color: Colors.white,
//               child: ListView.separated(
//                 itemCount: cubit.items.length,
//                 shrinkWrap: true,
//                 scrollDirection: Axis.horizontal,
//                 physics: const ClampingScrollPhysics(),
//                 itemBuilder: (context, index) {
//                   final String item = cubit.items[index];
//                   return UIComponent.customInkWellWidget(
//                     onTap: () => cubit.selectItem(index),
//                     child: Container(
//                       decoration: BoxDecoration(
//                         shape: BoxShape.rectangle,
//                         border: Border.all(
//                           color: index == selectedIndex
//                               ? AppColors.colorPrimary
//                               : AppColors.greyE9,
//                           width: 1,
//                         ),
//                         borderRadius: BorderRadius.circular(60),
//                         gradient: index == selectedIndex
//                             ? AppColors.primaryGradient
//                             : null,
//                       ),
//                       child: Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 14.0),
//                         child: Center(
//                           child: Text(
//                             item ?? "",
//                             maxLines: 2,
//                             overflow: TextOverflow.ellipsis,
//                             style: h14(
//                               fontWeight: FontWeight.w500,
//                               color: index == selectedIndex
//                                   ? AppColors.white
//                                   : AppColors.grey77,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//                 separatorBuilder: (BuildContext context, int index) {
//                   return 10.horizontalSpace;
//                 },
//               ),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
