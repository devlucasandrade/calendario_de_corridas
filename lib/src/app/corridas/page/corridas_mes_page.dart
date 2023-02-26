import 'package:calendario_de_corridas/src/app/corridas/page/corridas_lista_page.dart';
import 'package:calendario_de_corridas/src/domain/mock/corrida_mock.dart';
import 'package:flutter/material.dart';

class CorridasMesPage extends StatefulWidget {
  const CorridasMesPage({super.key});

  @override
  State<CorridasMesPage> createState() => _CorridasMesPageState();
}

class _CorridasMesPageState extends State<CorridasMesPage> {
  final corridasListMock = [...corridaMock];

  void openDialog(String mes) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          'Sem corridas em $mes',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(
              'OK',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Calendário de Corridas - Bahia',
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: MediaQuery.of(context).size.height * 0.8,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
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
                          builder: (context) => CorridasListaPage(
                            mesId: mes,
                          ),
                        ),
                      )
                    : openDialog(mes.nomeMes);
              },
              child: Card(
                elevation: 10,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  height: MediaQuery.of(context).size.height * 0.1,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        mes.nomeMes,
                        style: Theme.of(context).textTheme.bodyLarge,
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
              ),
            );
          },
        ),
      ),
    );
  }
}
