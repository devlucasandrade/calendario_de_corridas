import 'package:calendario_de_corridas/src/app/calendario/widgets/lista_de_corridas.dart';
import 'package:calendario_de_corridas/src/components/app_bar.dart';
import 'package:calendario_de_corridas/src/components/container_padrao.dart';
import 'package:calendario_de_corridas/src/components/titulos_xgrande.dart';
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
      appBar: AppBarWidget(
        textTitle: 'Calendário de Corridas',
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(height: 5),
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
              child: Column(
                children: [
                  ContainerPadrao(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 15,
                    ),
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.09,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.end,
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
                ],
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
              style: TextStyles.titleXGrande(),
            ),
          ),
        ],
      ),
    );
  }
}
