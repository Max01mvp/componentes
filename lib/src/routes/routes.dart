
import 'package:componentes/src/pages/input_page.dart';
import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/pages/animated_container.dart';
import 'package:componentes/src/pages/avatar_page.dart';
import 'package:componentes/src/pages/card_page.dart';
import 'package:componentes/src/pages/home_page.dart';
import 'package:flutter/material.dart';
import '../pages/slider_page.dart';


Map<String, WidgetBuilder> getApplicationRoytes(){



  return  <String, WidgetBuilder>{

      '/'     : (context) => HomePage(),
      'alert' : (context) => AlertPage(),
      'avatar': (context) => AvatarPage(),
      'card'  : (context) => CardPage(),
      'animatedContainer' :(context) => AnimatedContainerPage(),
      'inputs': (context) => InputPage(),
      'list': (context) => SliderPage(),

};

}