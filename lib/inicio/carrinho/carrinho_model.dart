import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'carrinho_widget.dart' show CarrinhoWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CarrinhoModel extends FlutterFlowModel<CarrinhoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for imputCliente widget.
  FocusNode? imputClienteFocusNode;
  TextEditingController? imputClienteController;
  String? Function(BuildContext, String?)? imputClienteControllerValidator;
  // State field(s) for dropMesa widget.
  String? dropMesaValue;
  FormFieldController<String>? dropMesaValueController;
  // State field(s) for dropPagamento widget.
  String? dropPagamentoValue;
  FormFieldController<String>? dropPagamentoValueController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    imputClienteFocusNode?.dispose();
    imputClienteController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
