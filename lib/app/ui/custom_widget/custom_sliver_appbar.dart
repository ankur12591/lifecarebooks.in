import 'package:flutter/material.dart';

import '../../../config/app_colors.dart';
import 'dynamic_tab_bar.dart';

class CustomSliverAppBar extends StatefulWidget {
  CustomSliverAppBar(
      {super.key,
      required this.flexibleSpaceBarWidget,
      this.isScrollable = false,
      this.expandedHeight = 210,
      required this.tabsList,
      required this.tabsLength,
      this.tabController,
      this.initialTabIndex = 0,
      required this.tabBarViewsList,
      required this.onTabControllerUpdated,
      this.tabAlignment=TabAlignment.start});

  final Widget flexibleSpaceBarWidget;
  final bool isScrollable;
  final double? expandedHeight;
  final int tabsLength;
  final List<Widget> tabsList;
  final List<Widget> tabBarViewsList;
  TabController? tabController;
  final int initialTabIndex;
  final Function(TabController) onTabControllerUpdated;
  final TabAlignment? tabAlignment;

  void moveToIndex(int index) {
    tabController?.animateTo(index);
  }

  @override
  State<CustomSliverAppBar> createState() => _CustomSliverAppBarState();
}

class _CustomSliverAppBarState extends State<CustomSliverAppBar>
    with TickerProviderStateMixin {
  // TabController? _tabController;

  int activeTab = 0;

  // void moveToIndex(int index) {
  //   widget.tabController?.animateTo(index);
  // }

  @override
  void initState() {
    super.initState();
    activeTab = widget.initialTabIndex;
    widget.tabController =
        getTabController(initialIndex: widget.initialTabIndex);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    widget.tabController =
        getTabController(initialIndex: widget.tabsLength - 1);
    widget.onTabControllerUpdated(widget.tabController = getTabController());
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: widget.tabsLength,
        initialIndex: 0,
        child: NestedScrollView(
            physics: const NeverScrollableScrollPhysics(),
            headerSliverBuilder: (context, isScrolled) {
              return [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  backgroundColor: AppColors.blueFE,
                  expandedHeight: widget.expandedHeight,
                  stretch: true,
                  floating: true,
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar(
                    background: widget.flexibleSpaceBarWidget,
                  ),
                  bottom: PreferredSize(
                    preferredSize: const Size.fromHeight(50),
                    child: Material(
                      color: AppColors.blueFE,
                      child: TabBar(
                        isScrollable: widget.isScrollable,
                        controller: widget.tabController,
                        // onTabControllerUpdated: (controller) {},
                        labelColor: AppColors.colorPrimary,
                        labelPadding:
                            const EdgeInsets.symmetric(horizontal: 20),
                        dividerHeight: 1,
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicatorWeight: 3,
                        tabAlignment: widget.tabAlignment,
                        indicatorColor: AppColors.colorPrimary,
                        tabs: widget.tabsList,
                      ),
                    ),
                  ),
                ),
              ];
            },
            body: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              controller: widget.tabController,
              children: widget.tabBarViewsList,
            )));
  }

  @override
  void didUpdateWidget(covariant CustomSliverAppBar oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.tabController?.length != widget.tabsLength) {
      var activeTabIndex = getActiveTab();
      widget.tabController = getTabController(initialIndex: activeTabIndex);

      var tabIndex = getOnAddMoveToTab(MoveToTab.idol);
      if (tabIndex != null) {
        Future.delayed(const Duration(milliseconds: 50), () {
          widget.tabController?.animateTo(
            tabIndex,
          );
          setState(() {
            activeTab = tabIndex;
          });
        });
      }
    } else {}
  }

  TabController getTabController({int initialIndex = 0}) {
    return TabController(
      initialIndex: initialIndex,
      length: widget.tabsLength,
      vsync: this,
    )..addListener(() {
        setState(() {
          activeTab = widget.tabController?.index ?? 0;
          if (widget.tabController?.indexIsChanging == true) {}
        });
      });
  }

  int getActiveTab() {
    // when there are No tabs
    if (activeTab == 0 && widget.tabBarViewsList.isEmpty) {
      return 0;
    }
    if (activeTab == widget.tabsLength) {
      return widget.tabsLength - 1;
    }
    if (activeTab < widget.tabsLength) {
      return activeTab;
    }
    return widget.tabsLength;
  }

  int? getOnAddMoveToTab(MoveToTab? moveToTab) {
    switch (moveToTab) {
      case MoveToTab.last:
        return widget.tabsLength - 1;

      case MoveToTab.idol:
        return null;

      case null:
        // move to Last Tab
        return widget.tabsLength - 1;
    }
  }

  @override
  void dispose() {
    widget.tabController?.dispose();
    super.dispose();
  }
}
