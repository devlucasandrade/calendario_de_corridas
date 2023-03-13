import 'package:calendario_de_corridas/src/app/home/widgets/container_corridas.dart';
import 'package:calendario_de_corridas/src/components/titulos_xgrande.dart';
import 'package:calendario_de_corridas/src/domain/mock/corrida_mock.dart';
import 'package:calendario_de_corridas/src/shared/constants/string_constants.dart';
import 'package:calendario_de_corridas/src/shared/text/text_styles.dart';
import 'package:flutter/material.dart';

class ProximasCincoCorridas extends StatefulWidget {
  const ProximasCincoCorridas({super.key});

  @override
  State<ProximasCincoCorridas> createState() => _ProximasCincoCorridasState();
}

class _ProximasCincoCorridasState extends State<ProximasCincoCorridas> {
  final corridasListMock = [...corridaMock];

  @override
  Widget build(BuildContext context) {
    int i = 2;
    return Column(
      children: [
        const TitulosXGrande(text: 'PRÓXIMAS 5 CORRIDAS'),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.4,
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return const SizedBox(height: 15);
            },
            itemCount: corridasListMock[i].corridas?.length ?? 0,
            itemBuilder: (context, index) {
              final corridas = corridasListMock[i].corridas?[index];
              return ContainerCorridas(
                imageAsset: corridas?.imagem,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      corridas?.nome.toUpperCase() ??
                          StringConstants.textBasics.naoCadastrado,
                      style: TextStyles.titleGrande(),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.calendar_month),
                            const SizedBox(width: 5),
                            Text(
                              corridas?.data ??
                                  StringConstants.textBasics.naoCadastrado,
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            const Icon(Icons.sports_score_outlined),
                            const SizedBox(width: 5),
                            Text(
                              corridas?.distancia ??
                                  StringConstants.textBasics.naoCadastrado,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
