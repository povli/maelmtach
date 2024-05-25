import '/flutter_flow/flutter_flow_util.dart';
import 'order_state_after_pay_widget.dart' show OrderStateAfterPayWidget;
import 'package:flutter/material.dart';

class OrderStateAfterPayModel
    extends FlutterFlowModel<OrderStateAfterPayWidget> {
  ///  Local state fields for this page.

  bool apper = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
