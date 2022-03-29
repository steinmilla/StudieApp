
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:appstudie/utilities.dart';




Future<void> createWaterReminderNotification() async  {

  await AwesomeNotifications().createNotification(
    content: NotificationContent(
      id: createUniqueId(),
      channelKey: 'scheduled_channel',
      title: '${Emojis.symbols_red_question_mark + Emojis.office_pencil} Studie - Fragebogen',
      body: 'Bitte unterbrechen Sie Ihre Tätigkeit und füllen den Fragebogen aus.',
      notificationLayout: NotificationLayout.Default,),

    
    actionButtons: [
      NotificationActionButton(
        key: 'MARK_DONE',
        label: 'Mark Done',
      ),
    ],
   );
}

