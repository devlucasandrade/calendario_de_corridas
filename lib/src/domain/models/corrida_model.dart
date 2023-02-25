import 'dart:convert';

class CorridaModel {
  String nome;
  String local;
  String data;
  String informacoes;
  String distancia;
  String realizacao;

  CorridaModel({
    required this.nome,
    required this.local,
    required this.data,
    required this.informacoes,
    required this.distancia,
    required this.realizacao,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nome': nome,
      'local': local,
      'data': data,
      'informacoes': informacoes,
      'distancia': distancia,
      'realizacao': realizacao,
    };
  }

  factory CorridaModel.fromMap(Map<String, dynamic> map) {
    return CorridaModel(
      nome: map['nome'] as String,
      local: map['local'] as String,
      data: map['data'] as String,
      informacoes: map['informacoes'] as String,
      distancia: map['distancia'] as String,
      realizacao: map['realizacao'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CorridaModel.fromJson(String source) =>
      CorridaModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
