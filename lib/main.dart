import 'package:componentes/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:componentes/src/pages/alert_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
//import 'package:componentes/src/pages/home_temp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [

        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,

      ],

      supportedLocales: [

        const Locale('en', 'US'),
        const Locale('es', 'ES'),

      ],


      // home: HomePage(),
      initialRoute: '/',
      routes: getApplicationRoytes(),
      onGenerateRoute: (RouteSettings settings) {
        
        print('Ruta llamada: ${settings.name}');

        return MaterialPageRoute(
          builder: (context) => AlertPage(),
        );
      },
    );
  }
}
