import 'package:calendario_de_corridas/src/app/calendario/page/calendario_de_corridas_page.dart';
import 'package:calendario_de_corridas/src/app/configuracoes/page/configuracoes_page.dart';
import 'package:calendario_de_corridas/src/app/favoritas/page/corridas_favoritas_page.dart';
import 'package:calendario_de_corridas/src/app/home/page/home_page.dart';
import 'package:calendario_de_corridas/src/shared/text/text_styles.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  final int index;
  const CustomDrawer({super.key, required this.index});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  late int screenIndex = widget.index;

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      selectedIndex: screenIndex,
      onDestinationSelected: (index) {
        if (index == 0) {
          Navigator.of(context).pushReplacementNamed('/home');
        }
        if (index == 1) {
          Navigator.of(context).pushReplacementNamed('/calendario');
        }
        if (index == 2) {
          Navigator.of(context).pushReplacementNamed('/favoritas');
        }
        if (index == 3) {
          Navigator.of(context).pushReplacementNamed('/config');
        }
      },
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            'Navegação',
            style: TextStyles.textoNormal(),
          ),
        ),
        const NavigationDrawerDestination(
          label: Text('Home'),
          icon: Icon(Icons.home_outlined),
          selectedIcon: Icon(Icons.home),
        ),
        const NavigationDrawerDestination(
          label: Text('Calendário'),
          icon: Icon(Icons.calendar_month_outlined),
          selectedIcon: Icon(Icons.calendar_month),
        ),
        const NavigationDrawerDestination(
          label: Text('Favoritas'),
          icon: Icon(Icons.favorite_outline),
          selectedIcon: Icon(Icons.favorite),
        ),
        const NavigationDrawerDestination(
          label: Text('Configurações'),
          icon: Icon(Icons.settings_outlined),
          selectedIcon: Icon(Icons.settings),
        ),
      ],
    );
  }
}

class Destination {
  const Destination(this.label, this.icon, this.selectdIcon);
  final String label;
  final Widget icon;
  final Widget selectdIcon;
}

const List<Destination> destinations = [
  Destination(
    'Home',
    Icon(Icons.home_outlined),
    Icon(Icons.home),
  ),
  Destination(
    'Calendário',
    Icon(Icons.calendar_month_outlined),
    Icon(Icons.calendar_month),
  ),
  Destination(
    'Favoritas',
    Icon(Icons.favorite_outline),
    Icon(Icons.favorite),
  ),
  Destination(
    'Configurações',
    Icon(Icons.settings_outlined),
    Icon(Icons.settings),
  ),
];
