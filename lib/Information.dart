import 'package:appstudie/widgets.dart';
import 'package:flutter/material.dart';


class InformationPage extends StatelessWidget {
  const InformationPage({Key? key}) : super(key: key);

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: InformationTitle(),
        backgroundColor: Colors.teal,
      ),
           body: Center(
        child: Text('hier steht Text', style: TextStyle (fontSize: 18)),
      ),
    );
  }
}