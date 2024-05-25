import '/flutter_flow/flutter_flow_util.dart';
import 'homepagpagpagepagepage_widget.dart' show HomepagpagpagepagepageWidget;
import 'package:flutter/material.dart';

class HomepagpagpagepagepageModel
    extends FlutterFlowModel<HomepagpagpagepagepageWidget> {
  ///  Local state fields for this page.

  List<bool> isTriggered = [];
  void addToIsTriggered(bool item) => isTriggered.add(item);
  void removeFromIsTriggered(bool item) => isTriggered.remove(item);
  void removeAtIndexFromIsTriggered(int index) => isTriggered.removeAt(index);
  void insertAtIndexInIsTriggered(int index, bool item) =>
      isTriggered.insert(index, item);
  void updateIsTriggeredAtIndex(int index, Function(bool) updateFn) =>
      isTriggered[index] = updateFn(isTriggered[index]);

  bool diapper = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in Container widget.
  int? tmtCopy;
  // Stores action output result for [Firestore Query - Query a collection] action in Icon widget.
  int? tmt;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
