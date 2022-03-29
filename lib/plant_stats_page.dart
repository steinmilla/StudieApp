import 'package:flutter/material.dart';
import 'package:appstudie/widgets.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PlantStatsPage extends StatelessWidget {
  const PlantStatsPage({Key? key}) : super(key: key);

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: FragebogenTitle(),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: WebView(
      initialUrl: 'https://www.google.com/',
      javascriptMode: JavascriptMode.unrestricted,
      
       )
      ),
    );
  }
}