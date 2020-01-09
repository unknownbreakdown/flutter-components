import 'package:flutter/material.dart';
import 'package:flutter_components/src/pages/alert.dart';
import 'package:flutter_components/src/pages/animated_container.dart';
import 'package:flutter_components/src/pages/avatar.dart';
import 'package:flutter_components/src/pages/card.dart';
import 'package:flutter_components/src/pages/home.dart';
import 'package:flutter_components/src/pages/input.dart';
import 'package:flutter_components/src/pages/list.dart';
import 'package:flutter_components/src/pages/slider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en'), // English
        const Locale('es'), // Spanish
      ],
      title: 'Flutter Components App',
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => HomePage(),
        'alert': (BuildContext context) => AlertPage(),
        'avatar': (BuildContext context) => AvatarPage(),
        'card': (BuildContext context) => CardPage(),
        'animated_container': (BuildContext context) => AnimatedContainerPage(),
        'input': (BuildContext context) => InputPage(),
        'slider': (BuildContext context) => SliderPage(),
        'list': (BuildContext context) => ListPage(),
      },
      onGenerateRoute: (RouteSettings settings) {
        print("Route named ${settings.name}");

        return MaterialPageRoute(
            builder: (BuildContext context) => AlertPage());
      },
    );
  }
}
