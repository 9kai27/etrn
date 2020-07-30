import 'package:flutter/material.dart';
//Package for radom number.
import 'dart:math' as math;
//For use url_launcher package.
import 'package:url_launcher/url_launcher.dart';
//For make icon URL. https://pub.dev/packages/flutter_launcher_icons
import 'package:flutter_launcher_icons/android.dart';
import 'package:flutter_launcher_icons/constants.dart';
import 'package:flutter_launcher_icons/custom_exceptions.dart';
import 'package:flutter_launcher_icons/ios.dart';
import 'package:flutter_launcher_icons/main.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';
import 'package:url_launcher/url_launcher.dart';

//constitution
//MyApp->AppMain->_AppMainState

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'etrn',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AppMain(title: 'etrn'),
    );
  }
}

class AppMain extends StatefulWidget {
  AppMain({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _AppMainState createState() => _AppMainState();
}

class _AppMainState extends State<AppMain> {

  //For use link Package. https://pub.dev/packages/link
  _launchURL() async {
    const url = 'https://9vox2.netlify.com/';
    if (await canLaunch(url)) {
      launch(url);
    } else {
    throw 'Could not launch $url';
    }
  }

  //this variable for display number(1-6)
  int _result = 0;
  diceRoll(){
    setState(() {
    var _roll = math.Random();
    _result = (_roll.nextInt(6) + 1);
    });
  }

  void launch(String s) {}
  //Write widget.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      backgroundColor: Colors.blue,
      body: SingleChildScrollView(
      child: Column(
      children: <Widget>[
      TextField(
        minLines: 1,
        maxLines: 1,
        maxLength: 50,
        decoration: InputDecoration(
          fillColor: Colors.white, filled: true,
          border: OutlineInputBorder(),
          labelText: '1',
        )
      ),
      TextField(
        minLines: 1,
        maxLines: 1,
        maxLength: 50,
        decoration: InputDecoration(
          fillColor: Colors.white, filled: true,
          border: OutlineInputBorder(),
          labelText: '2',
        )
      ),
      TextField(
        minLines: 1,
        maxLines: 1,
        maxLength: 50,
        decoration: InputDecoration(
          fillColor: Colors.white, filled: true,
          border: OutlineInputBorder(),
          labelText: '3',
        )
      ),
      TextField(
        minLines: 1,
        maxLines: 1,
        maxLength: 50,
        decoration: InputDecoration(
          fillColor: Colors.white, filled: true,
          border: OutlineInputBorder(),
          labelText: '4',
        )
      ),
      TextField(
        minLines: 1,
        maxLines: 1,
        maxLength: 50,
        decoration: InputDecoration(
          fillColor: Colors.white, filled: true,
          border: OutlineInputBorder(),
          labelText: '5',
        )
      ),
      TextField(
        minLines: 1,
        maxLines: 1,
        maxLength: 50,
        decoration: InputDecoration(
          fillColor: Colors.white, filled: true,
          border: OutlineInputBorder(),
          labelText: '6',
        )
      ),
      RaisedButton(
        onPressed: () {diceRoll();},
        child: Text('._/'),
      ),
      RichText(
        text: TextSpan(
          style: DefaultTextStyle.of(context).style,
          children: <TextSpan>[
            TextSpan(
              text: '$_result',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
      Text(''),
      Text(''),
      //Link
      RaisedButton(
        onPressed: _launchURL,
        child: Text('ABOUT'),
      ),
    ],
    ),
    )
    );
  }
  }
    