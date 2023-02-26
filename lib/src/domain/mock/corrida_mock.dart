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
        local: 'Jardim de Alah - Salvador',
        data: '05/03/2023',
        inscricoes:
            'Através da FBA ou no site: http://www.corridasonline.com.br/proximoseventos.aspx',
        distancia: '5,5km',
        realizacao: 'FBA - ba@cbat.org.br',
        imagem: 'assets/imagens/beachcross.png',
      ),
      CorridaModel(
        corridaId: 2,
        nome: 'Corrida TPM RG+',
        local: 'Feria de Santana',
        data: '12/03/2023',
        inscricoes:
            'Através do site: https://rgmais.com/provas/corrida-tpm-analise/',
        distancia: '3Km, 5Km e 10Km',
        realizacao: 'RG+ - https://rgmais.com/',
      ),
      CorridaModel(
        corridaId: 3,
        nome: 'STFRS Boulevard Shopping',
        local: 'Feira de Santana',
        data: '26/03/2023',
        inscricoes: 'Através do aplicativo',
        distancia: '5Km e 10Km',
        realizacao: 'Real Time Sports S.A. - sac@tfsports.com.br',
      ),
      CorridaModel(
        corridaId: 4,
        nome: 'Salvador 10 Milhas',
        local: 'Ponta de Humaitá - Salvador',
        data: '26/03/2023',
        inscricoes:
            'Através do site: https://www.centraldacorrida.com.br/salvador10milhas2023/',
        distancia: '5 Milhas e 10 Milhas',
        realizacao: 'Jardel Moura - contato@jardelmoura.com.br',
      ),
    ],
  ),
  MesModel(
    mesId: 4,
    nomeMes: 'Abril',
    corridas: [],
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
