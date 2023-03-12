import 'package:calendario_de_corridas/src/app/calendario/page/calendario_de_corridas_page.dart';
import 'package:calendario_de_corridas/src/app/configuracoes/page/configuracoes_page.dart';
import 'package:calendario_de_corridas/src/app/favoritas/page/corridas_favoritas_page.dart';
import 'package:calendario_de_corridas/src/app/home/page/home_page.dart';
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
      initialRoute: '/navigation',
      routes: {
        '/home': (context) => const HomePage(),
        '/navigation': (context) => const NavigationPage(),
        '/calendario': (context) => const CalendarioDeCorridasPage(),
        '/favoritas': (context) => const CorridasFavoritasPage(),
        '/config': (context) => const ConfiguracoesPage(),
      },
    );
  }
}
