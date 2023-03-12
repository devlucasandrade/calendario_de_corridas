import 'package:calendario_de_corridas/src/components/container_padrao.dart';
import 'package:calendario_de_corridas/src/components/titulos_xgrande.dart';
import 'package:flutter/material.dart';

class DicasWidget extends StatelessWidget {
  const DicasWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitulosXGrande(text: 'DICAS'),
        ContainerPadrao(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          height: MediaQuery.of(context).size.height * 0.3,
          child: Column(
            children: const [
              SizedBox(height: 10),
              Text(
                'Assuntos sobre corrida, podcasts, instagram, twitter, etc.',
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ],
    );
  }
}
