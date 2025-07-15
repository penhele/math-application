import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

Future<bool> showExitQuizDialog(BuildContext context) async {
  bool result = false;

  await AwesomeDialog(
    context: context,
    dialogType: DialogType.info,
    animType: AnimType.scale,
    title: 'Peringatan',
    desc: 'Hasil tidak akan disimpan jika Anda keluar.',
    btnCancelText: 'Tidak',
    btnOkText: 'Ya',
    btnCancelOnPress: () {
      result = false;
    },
    btnOkOnPress: () {
      result = true;
    },
    barrierColor: Colors.black.withValues(alpha:  0.2), 
    dismissOnTouchOutside: false,
  ).show();

  return result;
}
