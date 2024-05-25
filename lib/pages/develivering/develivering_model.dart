import '/flutter_flow/flutter_flow_util.dart';
import 'develivering_widget.dart' show DeveliveringWidget;
import 'package:flutter/material.dart';

class DeveliveringModel extends FlutterFlowModel<DeveliveringWidget> {
  ///  Local state fields for this page.

  bool imageapper = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
