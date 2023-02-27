import 'package:calendario_de_corridas/src/app/home/widgets/custom_drawer.dart';
import 'package:calendario_de_corridas/src/components/app_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBarWidget(
        textTitle: DateTime.now().year.toString(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Card(
              elevation: 10,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.35,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
