import 'package:calendario_de_corridas/src/app/configuracoes/page/configuracoes_page.dart';
import 'package:calendario_de_corridas/src/app/favoritas/page/corridas_favoritas_page.dart';
import 'package:calendario_de_corridas/src/app/calendario/page/calendario_de_corridas_page.dart';
import 'package:calendario_de_corridas/src/app/home/page/home_page.dart';
import 'package:flutter/material.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int currentIndex = 0;
  final pages = [
    const HomePage(),
    const CalendarioDeCorridasPage(),
    const CorridasFavoritasPage(),
    const ConfiguracoesPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        iconSize: 30,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Calendário',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favoritas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Configurações',
          ),
        ],
      ),
    );
  }
}
