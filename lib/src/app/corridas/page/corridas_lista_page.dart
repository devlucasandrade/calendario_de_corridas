import 'package:calendario_de_corridas/src/app/corridas/page/corridas_detalhes_page.dart';
import 'package:calendario_de_corridas/src/domain/models/mes_model.dart';
import 'package:flutter/material.dart';

class CorridasListaPage extends StatefulWidget {
  const CorridasListaPage({super.key, this.mesId});
  final MesModel? mesId;

  @override
  State<CorridasListaPage> createState() => _CorridasListaPageState();
}

class _CorridasListaPageState extends State<CorridasListaPage> {
  late MesModel? mes = widget.mesId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(mes?.nomeMes ?? ''),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: MediaQuery.of(context).size.height,
        child: ListView.separated(
          itemCount: mes?.corridas?.length ?? 0,
          separatorBuilder: (context, index) => const SizedBox(height: 5),
          itemBuilder: (context, index) {
            final corrida = mes?.corridas?[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CorridasDetalhesPage(
                      corrida: corrida,
                    ),
                  ),
                );
              },
              child: Card(
                elevation: 10,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  height: MediaQuery.of(context).size.height * 0.2,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 2, color: Colors.grey.shade500),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            corrida?.nome ?? 'Nome não cadastrado',
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          const Icon(Icons.calendar_month_outlined),
                          const SizedBox(width: 5),
                          Text(corrida?.data ?? 'Data não cadastrada'),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.map_outlined),
                          const SizedBox(width: 5),
                          Text(corrida?.local ?? 'Local não cadastrado'),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.run_circle_outlined),
                          const SizedBox(width: 5),
                          Text(
                              corrida?.distancia ?? 'Distância não cadastrada'),
                        ],
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



// 