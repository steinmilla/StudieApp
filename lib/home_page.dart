import 'dart:io';

import 'package:appstudie/Information.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:appstudie/notifications.dart';
import 'package:appstudie/plant_stats_page.dart';
import 'package:appstudie/widgets.dart';
import 'package:cron/cron.dart';
import 'Information.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
   




  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

bool isButtonClickable =true;
void buttonFunction ()
 {
setState(() {
  isButtonClickable = false;
  print('hello 1,1,1,1');
});
}






  @override
  void initState() {
    super.initState();
    AwesomeNotifications().isNotificationAllowed().then((isAllowed) {
      if (!isAllowed) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Allow Notifications'),
            content: Text('Our app would like to send you notifications'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Don\'t Allow',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
              ),
              TextButton(
                  onPressed: () => AwesomeNotifications()
                      .requestPermissionToSendNotifications()
                      .then((_) => Navigator.pop(context)),
                  child: Text(
                    'Allow',
                    style: TextStyle(
                      color: Colors.teal,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ))
            ],
          ),
        );
      }
    });

    AwesomeNotifications().createdStream.listen((notification) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
          'Notification Created on ${notification.channelKey}',
        ),
      ));
    });

    AwesomeNotifications().actionStream.listen((notification) {
      if (notification.channelKey == 'basic_channel' && Platform.isIOS) {
        AwesomeNotifications().getGlobalBadgeCounter().then(
              (value) =>
                  AwesomeNotifications().setGlobalBadgeCounter(value - 1),
            );
      }

      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (_) => PlantStatsPage(),
        ),
        (route) => route.isFirst,
      );
    });
  }

  @override
  void dispose() {
    AwesomeNotifications().actionSink.close();
    AwesomeNotifications().createdSink.close();
    super.dispose();
  }




  @override


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: AppBarTitle(),
        actions: [       
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => InformationPage(),
                ),
              );
            },
            icon: Icon(
              Icons.question_mark,
              size: 30,
            ),
          )
        ],











       
        
      ),
      body: Center(



        child: Opacity (opacity: isButtonClickable? 1.0:0.2,
        
        child: Column(
        
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            PlantImage(),
            
            SizedBox(
              height: 25,
            ),
           
             HomePageButtons(
        

              onPressedOne: () 
          
                
                  async{

                    if(isButtonClickable) {

                      buttonFunction();
                    }
            



                  final cron = Cron();

                   //Monday 
                  
                   
                       cron.schedule(Schedule.parse('36 14 * * 6'), () async {
                         
                       createWaterReminderNotification();
                        });

                      
                       cron.schedule(Schedule.parse('55 10 * * 1'), () async {
                       createWaterReminderNotification();
                        });
                      
                       cron.schedule(Schedule.parse('47 14 * * 1'), () async {
                       createWaterReminderNotification();
                        });
                      
                       cron.schedule(Schedule.parse('30 18 * * 1'), () async {
                       createWaterReminderNotification();
                        });
                      
                       cron.schedule(Schedule.parse('24 19 * * 1'), () async {
                       createWaterReminderNotification();
                        });

                   //Tuesday

                   
                       cron.schedule(Schedule.parse('15 09 * * 2'), () async {
                       createWaterReminderNotification();
                        });
                      
                      
                       cron.schedule(Schedule.parse('20 11 * * 2'), () async {
                       createWaterReminderNotification();
                        });

                      
                       cron.schedule(Schedule.parse('05 15 * * 2'), () async {
                       createWaterReminderNotification();
                        });

                      
                       cron.schedule(Schedule.parse('09 19 * * 2'), () async {
                       createWaterReminderNotification();
                        });
                      
                       cron.schedule(Schedule.parse('45 20 * * 2'), () async {
                       createWaterReminderNotification();
                        });

                      

                   //Wednesday
                   
                       cron.schedule(Schedule.parse('00 10 * * 3'), () async {
                       createWaterReminderNotification();
                        });
                      
                      
                       cron.schedule(Schedule.parse('55 12 * * 3'), () async {
                       createWaterReminderNotification();
                        });

                      
                       cron.schedule(Schedule.parse('17 15 * * 3'), () async {
                       createWaterReminderNotification();
                        });

                      
                       cron.schedule(Schedule.parse('13 17 * * 3'), () async {
                       createWaterReminderNotification();
                        });

                      
                       cron.schedule(Schedule.parse('00 21 * * 3'), () async {
                       createWaterReminderNotification();
                        });

                   //Thursday

                   
                       cron.schedule(Schedule.parse('08 08 * * 4'), () async {
                       createWaterReminderNotification();
                        });

                      
                       cron.schedule(Schedule.parse('20 10 * * 4'), () async {
                       createWaterReminderNotification();
                        });

                      
                       cron.schedule(Schedule.parse('58 19 * * 4'), () async {
                       createWaterReminderNotification();
                        });

                      
                       cron.schedule(Schedule.parse('00 20 * * 4'), () async {
                       createWaterReminderNotification();
                        });

                      
                       cron.schedule(Schedule.parse('18 22 * * 4'), () async {
                         
                       createWaterReminderNotification();
                        });

                   //Friday
                   
                       cron.schedule(Schedule.parse('38 21 * * 5'), () async { 

                       createWaterReminderNotification();
                        });

                      
                       cron.schedule(Schedule.parse('30 10 * * 5'), () async {
                       createWaterReminderNotification();
                        });

                      
                       cron.schedule(Schedule.parse('24 13 * * 5'), () async {
                       createWaterReminderNotification();
                        });

                      
                       cron.schedule(Schedule.parse('10 16 * * 5'), () async {
                       createWaterReminderNotification();
                        });

                      
                       cron.schedule(Schedule.parse('30 19 * * 5'), () async {
                       createWaterReminderNotification();
                        });

                   //Saturday
                   
                       cron.schedule(Schedule.parse('12 13 * * 6'), () async {
                       createWaterReminderNotification();
                        });
                      
                      
                       cron.schedule(Schedule.parse('00 12 * * 6'), () async {
                       createWaterReminderNotification();
                        });

                      
                       cron.schedule(Schedule.parse('21 16 * * 6'), () async {
                       createWaterReminderNotification();
                        });

                      
                       cron.schedule(Schedule.parse('05 19 * * 6'), () async {
                       createWaterReminderNotification();
                        });

                      
                       cron.schedule(Schedule.parse('30 21 * * 6'), () async {
                       createWaterReminderNotification();
                        });

                   //Sunday

                      cron.schedule(Schedule.parse('42 13 * * 7'), () async {
                       createWaterReminderNotification();
                        });

                      cron.schedule(Schedule.parse('35 13 * * 0'), () async {
                       createWaterReminderNotification();
                        });

                      cron.schedule(Schedule.parse('00 17 * * 0'), () async {
                       createWaterReminderNotification();

                       
                      cron.schedule(Schedule.parse('15 18 * * 0'), () async {
                       createWaterReminderNotification();
                        });

                      
                      cron.schedule(Schedule.parse('45 20 * * 0'), () async {
                       createWaterReminderNotification();
                        });
                  
                  
                
               });
              }, 
            ),
          ],
        ),
        )
      ),
    );
  }
}