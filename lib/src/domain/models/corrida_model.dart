class CorridaModel {
  int corridaId;
  String nome;
  String local;
  String data;
  String inscricoes;
  String distancia;
  String realizacao;
  String? imagem;

  CorridaModel({
    required this.corridaId,
    required this.nome,
    required this.local,
    required this.data,
    required this.inscricoes,
    required this.distancia,
    required this.realizacao,
    this.imagem,
  });
}
