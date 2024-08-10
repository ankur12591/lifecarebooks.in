part of 'notification_list_cubit.dart';

abstract class NotificationListState extends Equatable {}

class NotificationListInitial extends NotificationListState {
  @override
  List<Object?> get props => [];
}

class NotificationListLoading extends NotificationListState {
  @override
  List<Object?> get props => [];
}



class NotificationListItemRead extends NotificationListState {
  final bool isRead;
  final int index;

  NotificationListItemRead({required this.isRead,required this.index});

  @override
  List<Object?> get props => [isRead];
}
