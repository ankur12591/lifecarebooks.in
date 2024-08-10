class NotificationListModel {
  String? messageTitle;
  String? messageBody;
  String? messageBodySubtitle;
  String? message;
  String? timestamp;
  bool? isUpdate;
  bool? isAlert;
  bool? isRead;
  bool? isSimpleMessage;

  NotificationListModel(
      {this.messageTitle,
      this.messageBody,
      this.messageBodySubtitle,
      this.message,
      this.timestamp,
      this.isUpdate,
      this.isAlert,
      this.isRead,
      this.isSimpleMessage});
}
