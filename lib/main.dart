import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale("fa", "IR"), // OR Locale('ar', 'AE') OR Other RTL locales
      ],
      locale: Locale("fa", "IR"),
      home: Scaffold(
        appBar: AppBar(

          title: Text("لایه راست به چپ",textDirection: TextDirection.rtl,),
        ),
        body:Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("سلام")
            ],
          ),
        ),
      ),
    );
  }

}