// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:qr_flutter/qr_flutter.dart';

class QRCode extends StatelessWidget {
  const QRCode({
    Key? key,
    this.width,
    this.height,
    this.qrSize,
    this.qrVersion,
    required this.qrData,
  }) : super(key: key);

  // Required by FF (NOT USED IN WIDGET)
  final double? width;
  final double? height;
  // The (square) size of the image
  final double? qrSize;
  // Text data to the encoded
  final String qrData;
  // `QrVersions.auto` or a value between 1 and 40.
  // See http://www.qrcode.com/en/about/version.html for limitations and details.
  final int? qrVersion;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: QrImageView(
        data: qrData,
        version: qrVersion ?? QrVersions.auto,
        size: qrSize,
      ),
    );
  }
}
// Set your widget name, define your parameter, and then add the
// boilerplate code using the button on the right!
