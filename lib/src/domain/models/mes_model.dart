import 'package:calendario_de_corridas/src/domain/models/corrida_model.dart';

class MesModel {
  int mesId;
  String nomeMes;
  String? observacao;
  List<CorridaModel>? corridas;

  MesModel({
    required this.mesId,
    required this.nomeMes,
    this.observacao,
    this.corridas,
  });
}
