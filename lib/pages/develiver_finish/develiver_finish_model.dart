import '/flutter_flow/flutter_flow_util.dart';
import 'develiver_finish_widget.dart' show DeveliverFinishWidget;
import 'package:flutter/material.dart';

class DeveliverFinishModel extends FlutterFlowModel<DeveliverFinishWidget> {
  ///  Local state fields for this page.

  bool appericon = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
