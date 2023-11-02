// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PedidosStruct extends BaseStruct {
  PedidosStruct({
    String? nomePedido,
    double? quantidade,
    double? preco,
    String? img,
    String? id,
  })  : _nomePedido = nomePedido,
        _quantidade = quantidade,
        _preco = preco,
        _img = img,
        _id = id;

  // "nome_pedido" field.
  String? _nomePedido;
  String get nomePedido => _nomePedido ?? '';
  set nomePedido(String? val) => _nomePedido = val;
  bool hasNomePedido() => _nomePedido != null;

  // "quantidade" field.
  double? _quantidade;
  double get quantidade => _quantidade ?? 0.0;
  set quantidade(double? val) => _quantidade = val;
  void incrementQuantidade(double amount) => _quantidade = quantidade + amount;
  bool hasQuantidade() => _quantidade != null;

  // "preco" field.
  double? _preco;
  double get preco => _preco ?? 0.0;
  set preco(double? val) => _preco = val;
  void incrementPreco(double amount) => _preco = preco + amount;
  bool hasPreco() => _preco != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  set img(String? val) => _img = val;
  bool hasImg() => _img != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  static PedidosStruct fromMap(Map<String, dynamic> data) => PedidosStruct(
        nomePedido: data['nome_pedido'] as String?,
        quantidade: castToType<double>(data['quantidade']),
        preco: castToType<double>(data['preco']),
        img: data['img'] as String?,
        id: data['id'] as String?,
      );

  static PedidosStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? PedidosStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'nome_pedido': _nomePedido,
        'quantidade': _quantidade,
        'preco': _preco,
        'img': _img,
        'id': _id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nome_pedido': serializeParam(
          _nomePedido,
          ParamType.String,
        ),
        'quantidade': serializeParam(
          _quantidade,
          ParamType.double,
        ),
        'preco': serializeParam(
          _preco,
          ParamType.double,
        ),
        'img': serializeParam(
          _img,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
      }.withoutNulls;

  static PedidosStruct fromSerializableMap(Map<String, dynamic> data) =>
      PedidosStruct(
        nomePedido: deserializeParam(
          data['nome_pedido'],
          ParamType.String,
          false,
        ),
        quantidade: deserializeParam(
          data['quantidade'],
          ParamType.double,
          false,
        ),
        preco: deserializeParam(
          data['preco'],
          ParamType.double,
          false,
        ),
        img: deserializeParam(
          data['img'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PedidosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PedidosStruct &&
        nomePedido == other.nomePedido &&
        quantidade == other.quantidade &&
        preco == other.preco &&
        img == other.img &&
        id == other.id;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([nomePedido, quantidade, preco, img, id]);
}

PedidosStruct createPedidosStruct({
  String? nomePedido,
  double? quantidade,
  double? preco,
  String? img,
  String? id,
}) =>
    PedidosStruct(
      nomePedido: nomePedido,
      quantidade: quantidade,
      preco: preco,
      img: img,
      id: id,
    );
