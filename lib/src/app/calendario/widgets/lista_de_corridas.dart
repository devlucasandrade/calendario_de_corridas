import 'package:calendario_de_corridas/src/components/app_bar.dart';
import 'package:calendario_de_corridas/src/domain/models/mes_model.dart';
import 'package:calendario_de_corridas/src/shared/text/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
            return Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.black),
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        corrida?.nome ?? 'Não cadastrado',
                        style: TextStyles.titleXXGrande(),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      const Icon(Icons.calendar_month_outlined),
                      const SizedBox(width: 5),
                      Text(
                        corrida?.data ?? 'Não cadastrado',
                        style: TextStyles.textoNormal(),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.access_time_rounded),
                      const SizedBox(width: 5),
                      Text(
                        corrida?.horario ?? 'Não cadastrado',
                        style: TextStyles.textoNormal(),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.map_outlined),
                      const SizedBox(width: 5),
                      Text(
                        corrida?.local ?? 'Não cadastrado',
                        style: TextStyles.textoNormal(),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.flag_outlined),
                      const SizedBox(width: 5),
                      Text(
                        corrida?.distancia ?? 'Não cadastrado',
                        style: TextStyles.textoNormal(),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.star_border),
                      const SizedBox(width: 5),
                      Text(
                        corrida?.realizacao ?? 'Não cadastrado',
                        style: TextStyles.textoNormal(),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () => _abrirNoBrowser(corrida?.inscricoes ?? ''),
                    child: Row(
                      children: [
                        const Icon(Icons.link),
                        const SizedBox(width: 5),
                        Text(
                          'Inscrições e mais informações',
                          style: TextStyles.textoNormal(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
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

  Future<void> _abrirNoBrowser(String corrida) async {
    final url = Uri.parse(corrida);

    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Não foi possível abrir o site');
    }
  }
}
