import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
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
      children: const [
        Padding(
          padding: EdgeInsets.all(20),
          child: Text('Navegação'),
        ),
        NavigationDrawerDestination(
          icon: Icon(Icons.home_filled),
          label: Text('Home'),
        ),
        NavigationDrawerDestination(
          icon: Icon(Icons.calendar_month),
          label: Text('Calendário'),
        ),
        NavigationDrawerDestination(
          icon: Icon(Icons.favorite),
          label: Text('Favoritas'),
        ),
        NavigationDrawerDestination(
          icon: Icon(Icons.settings),
          label: Text('Configurações'),
        ),
      ],
    );
  }
}
