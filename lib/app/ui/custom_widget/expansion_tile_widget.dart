// import 'package:book_nest_life_care/app/ui/screens/home/cubit/category_cubit.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// import '../../../config/app_assets.dart';
// import '../../../config/app_colors.dart';
// import '../../../config/text_styles.dart';
// import '../../../utils/extensions.dart';
// import '../../../utils/ui_components.dart';
// import '../../bloc/expansion_cubit.dart';
// import '../../model/side_drawer_model.dart';
//
// class ExpansionTileWidget extends StatefulWidget {
//   final String title;
//   final List<SubModule> subModules;
//   final Widget icon;
//   final Function(int) onSubtitleTap;
//   final VoidCallback onDashboardTap;
//   final String mainModuleKey;
//
//   const ExpansionTileWidget({
//     Key? key,
//     required this.title,
//     required this.subModules,
//     required this.icon,
//     required this.onSubtitleTap,
//     required this.onDashboardTap,
//     required this.mainModuleKey,
//   }) : super(key: key);
//
//   @override
//   State<ExpansionTileWidget> createState() => _ExpansionTileWidgetState();
// }
//
// class _ExpansionTileWidgetState extends State<ExpansionTileWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Theme(
//       data: ThemeData().copyWith(dividerColor: Colors.transparent),
//       child: BlocBuilder<HomeCubit, HomeState>(
//         builder: (context, state) {
//           return BlocProvider(
//             create: (context) => ExpansionCubit(),
//             child: BlocBuilder<ExpansionCubit, ExpansionState>(
//               builder: (context, state) {
//                 bool isAllDashboard = widget.subModules.every((subModule) =>
//                     subModule.mainModule?.key == "dashboard" &&
//                     subModule.key == "dashboard");
//                 return ExpansionTile(
//                   title: isAllDashboard
//                       ? UIComponent.customInkWellWidget(
//                           onTap: widget.onDashboardTap,
//                           child: Text(
//                             widget.title,
//                             style: h14().copyWith(
//                               fontWeight: FontWeight.w600,
//                             ),
//                           ),
//                         )
//                       : Text(
//                           widget.title,
//                           style: h14().copyWith(fontWeight: FontWeight.w600),
//                         ),
//                   leading: widget.icon,
//                   trailing: isAllDashboard
//                       ? const SizedBox.shrink()
//                       : context.read<ExpansionCubit>().isExpanded
//                           ? SVGAssets.arrowBlackIcon.toSvg
//                           : SVGAssets.arrowRightIcon.toSvg,
//                   children: [
//                     ListView.builder(
//                       shrinkWrap: true,
//                       padding: EdgeInsets.zero,
//                       physics: const NeverScrollableScrollPhysics(),
//                       itemCount: widget.subModules.length,
//                       itemBuilder: (BuildContext context, int index) {
//                         if (widget.subModules[index].mainModule?.key ==
//                                 "dashboard" &&
//                             widget.subModules[index].key == "dashboard") {
//                           return Container(); // Return an empty container to hide this item
//                         }
//                         print("mainModuleKey ${context
//                             .read<HomeCubit>()
//                             .selectedMainModuleKey}");
//                         return ListTile(
//                           title: Text(
//                             widget.subModules[index].name ?? "",
//                             style: h14().copyWith(
//                               fontWeight: FontWeight.w600,
//                               color: context
//                                               .read<HomeCubit>()
//                                               .selectedMainModuleKey ==
//                                           widget.mainModuleKey &&
//                                       context.read<HomeCubit>().isSelected &&
//                                       context.read<HomeCubit>().selectedIndex ==
//                                           index
//                                   ? AppColors.colorPrimary
//                                   : null,
//                             ),
//                           ),
//                           selected: context
//                                       .read<HomeCubit>()
//                                       .selectedMainModuleKey ==
//                                   widget.mainModuleKey &&
//                               context.read<HomeCubit>().selectedIndex == index,
//                           leading: SVGAssets.dotIcon.toSvg,
//                           onTap: () {
//                             // context
//                             //     .read<ExpansionCubit>()
//                             //     .selectedItem(index, widget.mainModuleKey);
//                             context
//                                 .read<HomeCubit>()
//                                 .selectedItem(index, widget.mainModuleKey);
//                             widget.onSubtitleTap(index);
//                           },
//                         );
//                       },
//                     )
//                   ],
//                   onExpansionChanged: (expanded) {
//                     if (expanded) {
//                       context.read<ExpansionCubit>().expand();
//                     } else {
//                       context.read<ExpansionCubit>().collapse();
//                     }
//                   },
//                 );
//               },
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
//
// // import 'package:book_nest_life_care/app/bloc/expansion_cubit.dart';
// // import 'package:book_nest_life_care/utils/extensions.dart';
// // import 'package:book_nest_life_care/utils/ui_components.dart';
// // import 'package:flutter/material.dart';
// // import 'package:flutter_bloc/flutter_bloc.dart';
// //
// // import '../../../config/app_assets.dart';
// // import '../../../config/app_colors.dart';
// // import '../../../config/text_styles.dart';
// // import '../../model/side_drawer_model.dart';
// //
// // class ExpansionTileWidget extends StatefulWidget {
// //   final String title;
// //   final List<SubModule> subModules;
// //   final Widget icon;
// //   final Function(int) onSubtitleTap;
// //   final VoidCallback onDashboardTap;
// //
// //   const ExpansionTileWidget({
// //     Key? key,
// //     required this.title,
// //     required this.subModules,
// //     required this.icon,
// //     required this.onSubtitleTap,
// //     required this.onDashboardTap,
// //   }) : super(key: key);
// //
// //   @override
// //   State<ExpansionTileWidget> createState() => _ExpansionTileWidgetState();
// // }
// //
// // class _ExpansionTileWidgetState extends State<ExpansionTileWidget> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Theme(
// //       data: ThemeData().copyWith(dividerColor: Colors.transparent),
// //       child: BlocProvider(
// //         create: (context) => ExpansionCubit(),
// //         child: BlocBuilder<ExpansionCubit, ExpansionState>(
// //           builder: (context, state) {
// //             bool isAllDashboard = widget.subModules.every((subModule) =>
// //                 subModule.mainModule?.key == "dashboard" &&
// //                 subModule.key == "dashboard");
// //             return ExpansionTile(
// //               title: isAllDashboard
// //                   ? UIComponent.customInkWellWidget(
// //                       onTap: widget.onDashboardTap,
// //                       child: Text(
// //                         widget.title,
// //                         style: h14().copyWith(
// //                             fontWeight: FontWeight.w600,
// //                             color: AppColors.blueA5),
// //                       ),
// //                     )
// //                   : Text(
// //                       widget.title,
// //                       style: h14().copyWith(fontWeight: FontWeight.w600),
// //                     ),
// //               leading: widget.icon,
// //               trailing: isAllDashboard
// //                   ? const SizedBox.shrink()
// //                   : context.read<ExpansionCubit>().isExpanded
// //                       ? SVGAssets.arrowBlackIcon.toSvg
// //                       : SVGAssets.arrowRightIcon.toSvg,
// //               children: [
// //                 ListView.builder(
// //                   shrinkWrap: true,
// //                   padding: EdgeInsets.zero,
// //                   physics: const NeverScrollableScrollPhysics(),
// //                   itemCount: widget.subModules.length,
// //                   itemBuilder: (BuildContext context, int index) {
// //                     if (widget.subModules[index].mainModule?.key ==
// //                             "dashboard" &&
// //                         widget.subModules[index].key == "dashboard") {
// //                       return Container(); // Return an empty container to hide this item
// //                     }
// //                     final bool isSelected = context
// //                         .read<ExpansionCubit>()
// //                         .isSelected ;
// //                         // &&
// //                         // context.read<ExpansionCubit>().selectedIndex == index;
// //                     return ListTile(
// //                       title: Text(
// //                         widget.subModules[index].name ?? "",
// //                         style: h14().copyWith(fontWeight: FontWeight.w600,
// //
// //                           color: isSelected ? AppColors.colorPrimary : AppColors.greyE9
// //                         ),
// //                       ),
// //                       selected: context.read<ExpansionCubit>().isSelected
// //                           ? true
// //                           : false,
// //                       leading: SVGAssets.dotIcon.toSvg,
// //                       onTap: () {
// //                         // context.read<ExpansionCubit>().selectedItem(index);
// //                         widget.onSubtitleTap(index);
// //                       },
// //                     );
// //                   },
// //                 )
// //               ],
// //               onExpansionChanged: (expanded) {
// //                 if (expanded) {
// //                   context.read<ExpansionCubit>().expand();
// //                 } else {
// //                   context.read<ExpansionCubit>().collapse();
// //                 }
// //               },
// //             );
// //           },
// //         ),
// //       ),
// //     );
// //   }
// // }
