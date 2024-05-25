import '/flutter_flow/flutter_flow_util.dart';
import 'wait_page_widget.dart' show WaitPageWidget;
import 'package:flutter/material.dart';

class WaitPageModel extends FlutterFlowModel<WaitPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
