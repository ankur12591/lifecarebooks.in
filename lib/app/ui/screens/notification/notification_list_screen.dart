import 'package:book_nest_life_care/app/ui/custom_widget/app_bar_mixin.dart';
import 'package:book_nest_life_care/app/ui/screens/notification/component/notification_item.dart';
import 'package:book_nest_life_care/app/ui/screens/notification/cubit/notification_list_cubit.dart';
import 'package:book_nest_life_care/config/app_constants.dart';
import 'package:book_nest_life_care/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class NotificationListScreen extends StatefulWidget {
  const NotificationListScreen({super.key});

  @override
  State<NotificationListScreen> createState() => _NotificationListScreenState();
}

class _NotificationListScreenState extends State<NotificationListScreen>
    with AppBarMixin {
  @override
  void initState() {
    super.initState();
    context.read<NotificationListCubit>().getData();
  }

  @override
  Widget build(BuildContext context) {
    NotificationListCubit cubit = context.read<NotificationListCubit>();
    return BlocConsumer<NotificationListCubit, NotificationListState>(
      listener: buildBlocListener,
      builder: (context, state) {
        return Scaffold(
          appBar: buildAppBar(title: "Notification", context: context),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
            child: Column(
              children: [
                ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    var item = AppConstants.notificationList[index];
                    bool isRead = item.isRead ?? false;

                    // Update read status based on state
                    if (state is NotificationListItemRead &&
                        state.index == index) {
                      isRead = state.isRead;
                    }
                    return notificationItem(
                        modelData: item,
                        onTap: () {
                          cubit.toggleReadUnread(
                              index: index, isRead: item.isRead ?? false);
                        },
                        isReadColor: isRead);
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return 8.verticalSpace;
                  },
                  itemCount: AppConstants.notificationList.length,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void buildBlocListener(context, NotificationListState state) {
    if (state is NotificationListLoading) {}
  }
}
