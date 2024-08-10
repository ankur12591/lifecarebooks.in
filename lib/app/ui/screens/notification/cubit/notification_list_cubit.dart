import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:get_it/get_it.dart';

import '../../../../db/app_preferences.dart';

part 'notification_list_state.dart';

class NotificationListCubit extends Cubit<NotificationListState> {
  NotificationListCubit() : super(NotificationListInitial());

  AppPreferences appPreferences = AppPreferences();
  bool isReadNotification = false;
  int updateAtIndex = -1;

  Future<void> getData() async {
    }

  void toggleReadUnread(
      {required int index, required bool isRead}) {
    updateAtIndex = index;
    isReadNotification = isRead;
    isReadNotification = updateAtIndex != -1;
    emit(NotificationListItemRead(
        isRead: isReadNotification, index: updateAtIndex));
  }
}
