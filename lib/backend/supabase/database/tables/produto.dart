import '../database.dart';

class ProdutoTable extends SupabaseTable<ProdutoRow> {
  @override
  String get tableName => 'Produto';

  @override
  ProdutoRow createRow(Map<String, dynamic> data) => ProdutoRow(data);
}

class ProdutoRow extends SupabaseDataRow {
  ProdutoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProdutoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nomeProduto => getField<String>('nome_produto');
  set nomeProduto(String? value) => setField<String>('nome_produto', value);

  double? get valor => getField<double>('valor');
  set valor(double? value) => setField<double>('valor', value);

  double? get valorPromo => getField<double>('valor_promo');
  set valorPromo(double? value) => setField<double>('valor_promo', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  String? get img => getField<String>('img');
  set img(String? value) => setField<String>('img', value);

  String? get categoria => getField<String>('categoria');
  set categoria(String? value) => setField<String>('categoria', value);

  String? get maisVendidos => getField<String>('mais_vendidos');
  set maisVendidos(String? value) => setField<String>('mais_vendidos', value);

  bool? get ePromo => getField<bool>('e_promo');
  set ePromo(bool? value) => setField<bool>('e_promo', value);
}
