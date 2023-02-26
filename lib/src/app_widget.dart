import 'package:calendario_de_corridas/src/app/navigation/page/navigation_page.dart';
import 'package:calendario_de_corridas/src/shared/theme/themes.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      debugShowCheckedModeBanner: false,
      title: 'Calendário de Corridas',
      initialRoute: '/',
      routes: {
        '/': (context) => const NavigationPage(),
      },
    );
  }
}
