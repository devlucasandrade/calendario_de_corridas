import 'package:calendario_de_corridas/src/app/calendario/widgets/lista_de_corridas.dart';
import 'package:calendario_de_corridas/src/app/home/widgets/custom_drawer.dart';
import 'package:calendario_de_corridas/src/components/app_bar.dart';
import 'package:calendario_de_corridas/src/domain/mock/corrida_mock.dart';
import 'package:calendario_de_corridas/src/shared/text/text_styles.dart';
import 'package:flutter/material.dart';

class CalendarioDeCorridasPage extends StatefulWidget {
  const CalendarioDeCorridasPage({super.key});

  @override
  State<CalendarioDeCorridasPage> createState() =>
      _CalendarioDeCorridasPageState();
}

class _CalendarioDeCorridasPageState extends State<CalendarioDeCorridasPage> {
  final corridasListMock = [...corridaMock];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBarWidget(
        textTitle: 'Calendário de Corridas - Bahia',
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 1.6,
          ),
          itemCount: corridasListMock.length,
          itemBuilder: (context, index) {
            final mes = corridasListMock[index];

            return GestureDetector(
              onTap: () {
                mes.corridas!.isNotEmpty
                    ? Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ListaDeCorridas(
                            mesId: mes,
                          ),
                        ),
                      )
                    : openDialog(mes.nomeMes);
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.black),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      mes.nomeMes.toUpperCase(),
                      style: TextStyles.meses(),
                    ),
                    mes.corridas!.isEmpty
                        ? const SizedBox(height: 20)
                        : Text(
                            '${mes.corridas?.length} corridas',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void openDialog(String mes) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          'Sem corridas cadastradas em ${mes.toUpperCase()}',
          style: TextStyles.showdialog(),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(
              'OK',
              style: TextStyles.title2(),
            ),
          ),
        ],
      ),
    );
  }
}
