import 'package:calendario_de_corridas/src/domain/models/corrida_model.dart';
import 'package:flutter/material.dart';

class CorridasDetalhesPage extends StatefulWidget {
  const CorridasDetalhesPage({super.key, this.corrida});
  final CorridaModel? corrida;

  @override
  State<CorridasDetalhesPage> createState() => _CorridasDetalhesPageState();
}

class _CorridasDetalhesPageState extends State<CorridasDetalhesPage> {
  late CorridaModel? corrida = widget.corrida;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
      ),
      body: Stack(
        children: [
          Align(
            alignment: const Alignment(0, -1),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    corrida?.imagem ?? 'assets/imagens/sem_imagem.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.4,
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.8),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                color: Colors.white,
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.6,
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 20,
              ),
              child: Column(
                children: [
                  Text(
                    corrida?.nome ?? '',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Divider(
                    thickness: 3,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Informações',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Text('Inscrições: ${corrida?.inscricoes}'),
                    ],
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text('Voltar'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
