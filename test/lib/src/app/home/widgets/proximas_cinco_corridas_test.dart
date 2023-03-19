import 'package:calendario_de_corridas/src/domain/mock/corridas_mock.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/intl.dart';

final corridasListMock = [...corridasMock];

void main() {
  test('Deve retornar corridas e datas a partir da data atual', () async {
    int contador = 0;
    for (int id = 0; id < corridasListMock.length; id++) {
      final corridas = corridasMock[id];

      DateTime now = DateTime.now();
      final dataAtual = DateFormat('dd/MM/yyyy').parse(corridas.data);

      if (now.isBefore(dataAtual)) {
        print('${corridas.nome} - ${corridas.data}');
        contador++;
        if (contador == 5) {
          corridasListMock.length = 0;
        }
      }
    }
  });
}
