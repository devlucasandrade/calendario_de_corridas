import 'package:calendario_de_corridas/src/app/calendario/page/corridas_detalhes_page.dart';
import 'package:calendario_de_corridas/src/components/app_bar.dart';
import 'package:calendario_de_corridas/src/domain/models/mes_model.dart';
import 'package:calendario_de_corridas/src/shared/text/text_styles.dart';
import 'package:flutter/material.dart';

class ListaDeCorridas extends StatefulWidget {
  const ListaDeCorridas({super.key, this.mesId});
  final MesModel? mesId;

  @override
  State<ListaDeCorridas> createState() => _ListaDeCorridasState();
}

class _ListaDeCorridasState extends State<ListaDeCorridas> {
  late MesModel? mes = widget.mesId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        textTitle: '${mes?.nomeMes}',
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: MediaQuery.of(context).size.height,
        child: ListView.separated(
          itemCount: mes?.corridas?.length ?? 0,
          separatorBuilder: (context, index) => const SizedBox(height: 10),
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
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                height: MediaQuery.of(context).size.height * 0.15,
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.black),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
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
                          style: TextStyles.title3(),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        const Icon(Icons.calendar_month_outlined),
                        const SizedBox(width: 5),
                        Text(
                          corrida?.data ?? 'Data não cadastrada',
                          style: TextStyles.text1(),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(Icons.map_outlined),
                        const SizedBox(width: 5),
                        Text(
                          corrida?.local ?? 'Local não cadastrado',
                          style: TextStyles.text1(),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(Icons.run_circle_outlined),
                        const SizedBox(width: 5),
                        Text(
                          corrida?.distancia ?? 'Distância não cadastrada',
                          style: TextStyles.text1(),
                        ),
                      ],
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
}



// 