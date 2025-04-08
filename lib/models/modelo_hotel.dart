import 'package:flutter_hotel/models/modelo_facilidades.dart';

class Hotel {
  String imagem;
  String nome;
  String descricao;
  double estrelas;
  double avaliacao;
  double preco;
  List<Facilidades>? facilidades;

  Hotel(
      {required this.imagem,
      required this.nome,
      required this.descricao,
      required this.estrelas,
      required this.preco,
      required this.avaliacao,
      this.facilidades});
}
