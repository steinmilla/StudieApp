
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:appstudie/home_page.dart';


void main() async{


  AwesomeNotifications().initialize(
    'resource://drawable/res_notification_app_icon',
    [
      NotificationChannel(
        channelKey: 'basic_channel',
        channelName: 'Basic Notifications',
        defaultColor: Colors.teal,
        importance: NotificationImportance.High,
        enableVibration: true,
        channelShowBadge: true,
        soundSource: 'resource://raw/res_custom_notification',
        playSound: true,
        channelDescription: 'Informationen'

        
        
      ),

      NotificationChannel(
        channelKey: 'scheduled_channel',
        channelName: 'Scheduled Notifications',
        defaultColor: Colors.teal,
        enableVibration: true,
        locked: true,
        importance: NotificationImportance.High,
        playSound: true,
        soundSource: 'resource://raw/res_custom_notification',
        channelDescription: 'Fragebogen - Erinnerung'
      ),
    ],
debug: true
  );
  runApp(AppWidget());
}


class AppWidget extends StatelessWidget {

const  AppWidget({Key? key}) : super(key: key);
  

    
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.teal,
        backgroundColor: Colors.teal,
       
      ),
      title: ' Studie',
      home: HomePage(),
    );
  }
}