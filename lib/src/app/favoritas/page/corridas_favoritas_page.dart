import 'package:calendario_de_corridas/src/app/home/widgets/custom_drawer.dart';
import 'package:calendario_de_corridas/src/components/app_bar.dart';
import 'package:flutter/material.dart';

class CorridasFavoritasPage extends StatefulWidget {
  const CorridasFavoritasPage({super.key});

  @override
  State<CorridasFavoritasPage> createState() => _CorridasFavoritasPageState();
}

class _CorridasFavoritasPageState extends State<CorridasFavoritasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(index: 2),
      appBar: AppBarWidget(textTitle: 'Corridas Favoritas'),
      body: Container(),
    );
  }
}
