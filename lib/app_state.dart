import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _pedido = prefs
              .getStringList('ff_pedido')
              ?.map((x) {
                try {
                  return PedidosStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _pedido;
    });
    _safeInit(() {
      _adCarrinho = prefs.getDouble('ff_adCarrinho') ?? _adCarrinho;
    });
    _safeInit(() {
      _qtdvalor = prefs.getDouble('ff_qtdvalor') ?? _qtdvalor;
    });
    _safeInit(() {
      _removeitens = prefs.getDouble('ff_removeitens') ?? _removeitens;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<PedidosStruct> _pedido = [];
  List<PedidosStruct> get pedido => _pedido;
  set pedido(List<PedidosStruct> _value) {
    _pedido = _value;
    prefs.setStringList('ff_pedido', _value.map((x) => x.serialize()).toList());
  }

  void addToPedido(PedidosStruct _value) {
    _pedido.add(_value);
    prefs.setStringList(
        'ff_pedido', _pedido.map((x) => x.serialize()).toList());
  }

  void removeFromPedido(PedidosStruct _value) {
    _pedido.remove(_value);
    prefs.setStringList(
        'ff_pedido', _pedido.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromPedido(int _index) {
    _pedido.removeAt(_index);
    prefs.setStringList(
        'ff_pedido', _pedido.map((x) => x.serialize()).toList());
  }

  void updatePedidoAtIndex(
    int _index,
    PedidosStruct Function(PedidosStruct) updateFn,
  ) {
    _pedido[_index] = updateFn(_pedido[_index]);
    prefs.setStringList(
        'ff_pedido', _pedido.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInPedido(int _index, PedidosStruct _value) {
    _pedido.insert(_index, _value);
    prefs.setStringList(
        'ff_pedido', _pedido.map((x) => x.serialize()).toList());
  }

  double _adCarrinho = 0.0;
  double get adCarrinho => _adCarrinho;
  set adCarrinho(double _value) {
    _adCarrinho = _value;
    prefs.setDouble('ff_adCarrinho', _value);
  }

  double _qtdvalor = 0.0;
  double get qtdvalor => _qtdvalor;
  set qtdvalor(double _value) {
    _qtdvalor = _value;
    prefs.setDouble('ff_qtdvalor', _value);
  }

  double _removeitens = 0.0;
  double get removeitens => _removeitens;
  set removeitens(double _value) {
    _removeitens = _value;
    prefs.setDouble('ff_removeitens', _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
