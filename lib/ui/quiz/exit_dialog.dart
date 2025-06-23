import 'dart:ui';
import 'package:flutter/material.dart';

Future<bool> showExitQuizDialog(BuildContext context) async {
  return await showDialog(
        context: context,
        barrierColor: Colors.black.withValues(alpha: 0.2),
        builder: (context) {
          return Stack(
            children: [
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                child: Container(color: Colors.transparent),
              ),
              AlertDialog(
                title: const Text('Peringatan'),
                content: const Text(
                  'Hasil tidak akan disimpan jika Anda keluar.',
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(false),
                    child: const Text('Tidak'),
                  ),
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(true),
                    child: const Text('Ya'),
                  ),
                ],
              ),
            ],
          );
        },
      ) ??
      false;
}
