import 'package:flutter/material.dart';

void showSnackbar(BuildContext context, String msg) {
  final snackBar = SnackBar(
    content: Text(msg),
    duration: const Duration(seconds: 3),
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

dismissLoaderDialog(BuildContext context){
  if (ModalRoute.of(context)?.isCurrent != true) {
    Navigator.pop(context);
  }
}

showLoaderDialog(BuildContext context) {
  AlertDialog alert = AlertDialog(
    content: Row(
      children: [
        const CircularProgressIndicator(),
        Container(
            margin: const EdgeInsets.only(left: 7),
            child: const Text("Loading...")),
      ],
    ),
  );
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

// Future<TimeOfDay?> showTimePicker({
//   required BuildContext context,
//   required TimeOfDay initialTime,
//   TransitionBuilder? builder,
//   bool useRootNavigator = true,
//   TimePickerEntryMode initialEntryMode = TimePickerEntryMode.dial,
//   String? cancelText,
//   String? confirmText,
//   String? helpText,
//   String? errorInvalidText,
//   String? hourLabelText,
//   String? minuteLabelText,
//   RouteSettings? routeSettings,
//   EntryModeChangeCallback? onEntryModeChanged,
//   Offset? anchorPoint,
//   Orientation? orientation,
// }) async {
//   assert(debugCheckHasMaterialLocalizations(context));
//
//   final Widget dialog = TimePickerDialog(
//     initialTime: initialTime,
//     initialEntryMode: initialEntryMode,
//     cancelText: cancelText,
//     confirmText: confirmText,
//     helpText: helpText,
//     errorInvalidText: errorInvalidText,
//     hourLabelText: hourLabelText,
//     minuteLabelText: minuteLabelText,
//     onEntryModeChanged: onEntryModeChanged,
//   );
//   return showDialog<TimeOfDay>(
//     context: context,
//     useRootNavigator: useRootNavigator,
//     builder: (BuildContext context) {
//       return builder == null ? dialog : builder(context, dialog);
//     },
//     routeSettings: routeSettings,
//     anchorPoint: anchorPoint,
//   );
// }
