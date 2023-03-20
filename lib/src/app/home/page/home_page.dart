import 'package:calendario_de_corridas/src/app/home/widgets/dicas_widget.dart';
import 'package:calendario_de_corridas/src/app/home/widgets/proximas_cinco_corridas.dart';
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
      appBar: AppBarWidget(
        textTitle: 'CORRIDAS DE RUA 2023 - BAHIA',
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
        child: Column(
          children: const [
            SizedBox(height: 10),
            DicasWidget(),
            Spacer(),
            ProximasCincoCorridas(),
          ],
        ),
      ),
    );
  }
}
