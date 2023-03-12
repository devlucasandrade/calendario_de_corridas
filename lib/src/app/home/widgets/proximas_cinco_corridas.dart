import 'package:calendario_de_corridas/src/components/container_padrao.dart';
import 'package:calendario_de_corridas/src/components/titulos_xgrande.dart';
import 'package:flutter/material.dart';

class ProximasCincoCorridas extends StatelessWidget {
  const ProximasCincoCorridas({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitulosXGrande(text: 'PRÓXIMAS 5 CORRIDAS'),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.35,
          child: ListView.separated(
            itemCount: 5,
            separatorBuilder: (context, index) {
              return const SizedBox(height: 5);
            },
            itemBuilder: (context, index) {
              return ContainerPadrao(
                padding: const EdgeInsets.symmetric(vertical: 10),
                height: MediaQuery.of(context).size.height * 0.1,
                child: Column(
                  children: [
                    const Text('Corrida de Rua'),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: const [
                            Icon(Icons.calendar_month),
                            SizedBox(width: 5),
                            Text('10/10/2010'),
                          ],
                        ),
                        const SizedBox(width: 20),
                        Row(
                          children: const [
                            Icon(Icons.sports_score_outlined),
                            SizedBox(width: 5),
                            Text('5 e 10km'),
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
