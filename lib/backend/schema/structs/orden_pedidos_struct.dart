// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrdenPedidosStruct extends BaseStruct {
  OrdenPedidosStruct({
    String? nomeVliente,
    String? pedido,
    double? valor,
    double? quanti,
    String? formaPag,
    String? mesa,
    String? img,
    DateTime? data,
    double? nPedido,
  })  : _nomeVliente = nomeVliente,
        _pedido = pedido,
        _valor = valor,
        _quanti = quanti,
        _formaPag = formaPag,
        _mesa = mesa,
        _img = img,
        _data = data,
        _nPedido = nPedido;

  // "nome_vliente" field.
  String? _nomeVliente;
  String get nomeVliente => _nomeVliente ?? '';
  set nomeVliente(String? val) => _nomeVliente = val;
  bool hasNomeVliente() => _nomeVliente != null;

  // "pedido" field.
  String? _pedido;
  String get pedido => _pedido ?? '';
  set pedido(String? val) => _pedido = val;
  bool hasPedido() => _pedido != null;

  // "valor" field.
  double? _valor;
  double get valor => _valor ?? 0.0;
  set valor(double? val) => _valor = val;
  void incrementValor(double amount) => _valor = valor + amount;
  bool hasValor() => _valor != null;

  // "quanti" field.
  double? _quanti;
  double get quanti => _quanti ?? 0.0;
  set quanti(double? val) => _quanti = val;
  void incrementQuanti(double amount) => _quanti = quanti + amount;
  bool hasQuanti() => _quanti != null;

  // "forma_pag" field.
  String? _formaPag;
  String get formaPag => _formaPag ?? '';
  set formaPag(String? val) => _formaPag = val;
  bool hasFormaPag() => _formaPag != null;

  // "mesa" field.
  String? _mesa;
  String get mesa => _mesa ?? '';
  set mesa(String? val) => _mesa = val;
  bool hasMesa() => _mesa != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  set img(String? val) => _img = val;
  bool hasImg() => _img != null;

  // "data" field.
  DateTime? _data;
  DateTime? get data => _data;
  set data(DateTime? val) => _data = val;
  bool hasData() => _data != null;

  // "n_pedido" field.
  double? _nPedido;
  double get nPedido => _nPedido ?? 0.0;
  set nPedido(double? val) => _nPedido = val;
  void incrementNPedido(double amount) => _nPedido = nPedido + amount;
  bool hasNPedido() => _nPedido != null;

  static OrdenPedidosStruct fromMap(Map<String, dynamic> data) =>
      OrdenPedidosStruct(
        nomeVliente: data['nome_vliente'] as String?,
        pedido: data['pedido'] as String?,
        valor: castToType<double>(data['valor']),
        quanti: castToType<double>(data['quanti']),
        formaPag: data['forma_pag'] as String?,
        mesa: data['mesa'] as String?,
        img: data['img'] as String?,
        data: data['data'] as DateTime?,
        nPedido: castToType<double>(data['n_pedido']),
      );

  static OrdenPedidosStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? OrdenPedidosStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'nome_vliente': _nomeVliente,
        'pedido': _pedido,
        'valor': _valor,
        'quanti': _quanti,
        'forma_pag': _formaPag,
        'mesa': _mesa,
        'img': _img,
        'data': _data,
        'n_pedido': _nPedido,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nome_vliente': serializeParam(
          _nomeVliente,
          ParamType.String,
        ),
        'pedido': serializeParam(
          _pedido,
          ParamType.String,
        ),
        'valor': serializeParam(
          _valor,
          ParamType.double,
        ),
        'quanti': serializeParam(
          _quanti,
          ParamType.double,
        ),
        'forma_pag': serializeParam(
          _formaPag,
          ParamType.String,
        ),
        'mesa': serializeParam(
          _mesa,
          ParamType.String,
        ),
        'img': serializeParam(
          _img,
          ParamType.String,
        ),
        'data': serializeParam(
          _data,
          ParamType.DateTime,
        ),
        'n_pedido': serializeParam(
          _nPedido,
          ParamType.double,
        ),
      }.withoutNulls;

  static OrdenPedidosStruct fromSerializableMap(Map<String, dynamic> data) =>
      OrdenPedidosStruct(
        nomeVliente: deserializeParam(
          data['nome_vliente'],
          ParamType.String,
          false,
        ),
        pedido: deserializeParam(
          data['pedido'],
          ParamType.String,
          false,
        ),
        valor: deserializeParam(
          data['valor'],
          ParamType.double,
          false,
        ),
        quanti: deserializeParam(
          data['quanti'],
          ParamType.double,
          false,
        ),
        formaPag: deserializeParam(
          data['forma_pag'],
          ParamType.String,
          false,
        ),
        mesa: deserializeParam(
          data['mesa'],
          ParamType.String,
          false,
        ),
        img: deserializeParam(
          data['img'],
          ParamType.String,
          false,
        ),
        data: deserializeParam(
          data['data'],
          ParamType.DateTime,
          false,
        ),
        nPedido: deserializeParam(
          data['n_pedido'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'OrdenPedidosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OrdenPedidosStruct &&
        nomeVliente == other.nomeVliente &&
        pedido == other.pedido &&
        valor == other.valor &&
        quanti == other.quanti &&
        formaPag == other.formaPag &&
        mesa == other.mesa &&
        img == other.img &&
        data == other.data &&
        nPedido == other.nPedido;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [nomeVliente, pedido, valor, quanti, formaPag, mesa, img, data, nPedido]);
}

OrdenPedidosStruct createOrdenPedidosStruct({
  String? nomeVliente,
  String? pedido,
  double? valor,
  double? quanti,
  String? formaPag,
  String? mesa,
  String? img,
  DateTime? data,
  double? nPedido,
}) =>
    OrdenPedidosStruct(
      nomeVliente: nomeVliente,
      pedido: pedido,
      valor: valor,
      quanti: quanti,
      formaPag: formaPag,
      mesa: mesa,
      img: img,
      data: data,
      nPedido: nPedido,
    );
