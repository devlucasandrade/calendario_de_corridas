import 'package:calendario_de_corridas/src/app/home/widgets/container_corridas.dart';
import 'package:calendario_de_corridas/src/components/titulos_xgrande.dart';
import 'package:calendario_de_corridas/src/domain/mock/corridas_mock.dart';
import 'package:calendario_de_corridas/src/shared/constants/string_constants.dart';
import 'package:calendario_de_corridas/src/shared/text/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ProximasCincoCorridas extends StatefulWidget {
  const ProximasCincoCorridas({super.key});

  @override
  State<ProximasCincoCorridas> createState() => _ProximasCincoCorridasState();
}

class _ProximasCincoCorridasState extends State<ProximasCincoCorridas> {
  final corridasListMock = [...corridasMock];

  @override
  Widget build(BuildContext context) {
    DateTime hoje = DateTime.now();
    return Column(
      children: [
        const TitulosXGrande(text: 'CORRIDAS DO PRÓXIMO MÊS'),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.4,
          child: ListView.builder(
            itemCount: corridasListMock.length,
            itemBuilder: (context, index) {
              final corridas = corridasListMock[index];
              final dataCorrida = DateFormat('dd/MM/yyyy').parse(corridas.data);
              final mesAtual = DateFormat('MM').format(hoje);
              final mesCorrida = DateFormat('MM').format(dataCorrida);

              return (int.parse(mesCorrida) == int.parse(mesAtual) + 1)
                  ? Column(
                      children: [
                        ContainerCorridas(
                          imageAsset: corridas.imagem,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                corridas.nome.toUpperCase() ??
                                    StringConstants.textBasics.naoCadastrado,
                                style: TextStyles.titleGrande(),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    children: [
                                      const Icon(Icons.calendar_month),
                                      const SizedBox(width: 5),
                                      Text(
                                        corridas.data ??
                                            StringConstants
                                                .textBasics.naoCadastrado,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 5),
                                  Row(
                                    children: [
                                      const Icon(Icons.sports_score_outlined),
                                      const SizedBox(width: 5),
                                      Text(
                                        corridas.distancia ??
                                            StringConstants
                                                .textBasics.naoCadastrado,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15),
                      ],
                    )
                  : const SizedBox();
            },
          ),
        ),
      ],
    );
  }
}
