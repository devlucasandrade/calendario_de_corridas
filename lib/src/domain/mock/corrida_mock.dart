import 'package:calendario_de_corridas/src/domain/models/corrida_model.dart';
import 'package:calendario_de_corridas/src/domain/models/mes_model.dart';

final corridaMock = [
  MesModel(
    mesId: 1,
    nomeMes: 'Janeiro',
    corridas: [],
  ),
  MesModel(
    mesId: 2,
    nomeMes: 'Fevereiro',
    corridas: [],
  ),
  MesModel(
    mesId: 3,
    nomeMes: 'Março',
    corridas: [
      CorridaModel(
        corridaId: 1,
        nome: 'Beach Cross',
        local: 'Jardim de Alah',
        data: '05/03/2023',
        horario: '6:30h',
        inscricoes: 'http://www.corridasonline.com.br/proximoseventos.aspx',
        distancia: '5,5km',
        realizacao: 'FBA',
        imagem: 'assets/imagens/beachcross.png',
      ),
      CorridaModel(
        corridaId: 2,
        nome: 'Corrida TPM Análise',
        local: 'Feria de Santana',
        data: '12/03/2023',
        inscricoes: 'https://rgmais.com/provas/corrida-tpm-analise/',
        distancia: '3, 5 e 10Km',
        realizacao: 'RG+',
      ),
      CorridaModel(
        corridaId: 3,
        nome: 'Alpha Night Run',
        local: 'Shopping Paralela',
        data: '18/03/2023',
        inscricoes: 'https://www.centraldacorrida.com.br/alphanightrun',
        distancia: '5 e 10 Km',
        realizacao: 'Heads Assessoria e Eventos Esportivos',
      ),
      CorridaModel(
        corridaId: 4,
        nome: 'STFRS Boulevard Shopping',
        local: 'Feira de Santana',
        data: '26/03/2023',
        inscricoes: 'Através do aplicativo',
        distancia: '5 e 10Km',
        realizacao: 'Real Time Sports S.A.',
      ),
      CorridaModel(
        corridaId: 5,
        nome: 'Salvador 10 Milhas',
        local: 'Ponta de Humaitá',
        data: '26/03/2023',
        inscricoes: 'https://www.centraldacorrida.com.br/salvador10milhas2023/',
        distancia: '5 e 10 Milhas',
        realizacao: 'Jardel Moura',
      ),
    ],
  ),
  MesModel(
    mesId: 4,
    nomeMes: 'Abril',
    corridas: [
      CorridaModel(
        corridaId: 6,
        nome: 'Teste de Data',
        local: 'Em casa',
        data: '01/04/2023',
        inscricoes: 'www.nenhum.com',
        distancia: '5Km',
        realizacao: 'Nada aqui',
      ),
    ],
  ),
  MesModel(
    mesId: 5,
    nomeMes: 'Maio',
    corridas: [],
  ),
  MesModel(
    mesId: 6,
    nomeMes: 'Junho',
    corridas: [],
  ),
  MesModel(
    mesId: 7,
    nomeMes: 'Julho',
    corridas: [],
  ),
  MesModel(
    mesId: 8,
    nomeMes: 'Agosto',
    corridas: [],
  ),
  MesModel(
    mesId: 9,
    nomeMes: 'Setembro',
    corridas: [],
  ),
  MesModel(
    mesId: 10,
    nomeMes: 'Outubro',
    corridas: [],
  ),
  MesModel(
    mesId: 11,
    nomeMes: 'Novembro',
    corridas: [],
  ),
  MesModel(
    mesId: 12,
    nomeMes: 'Dezembro',
    corridas: [],
  ),
];
