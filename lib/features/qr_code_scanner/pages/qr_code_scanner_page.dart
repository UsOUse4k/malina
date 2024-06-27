import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:malina/core/di/injection.dart';
import 'package:malina/core/router/routes.dart';
import 'package:malina/features/qr_code_scanner/widgets/close_icon_button.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:talker_flutter/talker_flutter.dart';

class QRCodeScannerPage extends StatefulWidget {
  const QRCodeScannerPage({super.key});

  @override
  State<QRCodeScannerPage> createState() => _QRCodeScannerPageState();
}

class _QRCodeScannerPageState extends State<QRCodeScannerPage> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    } else if (Platform.isIOS) {
      controller!.resumeCamera();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          QRView(
            key: qrKey,
            onQRViewCreated: _onQRViewCreated,
            overlay: QrScannerOverlayShape(
              overlayColor: const Color(0xFF131313),
              borderColor: Colors.white,
              borderLength: 33.22,
              borderWidth: 3,
              borderRadius: 3,
              cutOutWidth: 300,
              cutOutHeight: 300,
              cutOutBottomOffset: 80,
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                Row(
                  children: [
                    const Spacer(),
                    CloseIconButton(
                      onTap: () {
                        const HomeRoute().go(context);
                      },
                    ),
                    const Gap(17),
                  ],
                ),
                const Gap(85),
                const Text(
                  "Поместите QR-код в рамку",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      getIt<Talker>().log(scanData);
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
