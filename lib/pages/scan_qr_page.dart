import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScanQQCodePage extends StatefulWidget {
  const ScanQQCodePage({super.key});

  @override
  State<ScanQQCodePage> createState() => _ScanQQCodePageState();
}

class _ScanQQCodePageState extends State<ScanQQCodePage> {
  String errorMessage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scan QR Code"),
      ),
      body: Column(
        children: [
          Expanded(
            child: MobileScanner(
              onDetect: (capture) {
                try {
                  final List<Barcode> barcodes = capture.barcodes;
                  final Uint8List? image = capture.image;

                  for (final barcode in barcodes) {
                    print('Barcode found! ${barcode.rawValue}');
                  }

                  if (image != null) {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text(
                            barcodes.first.rawValue ?? "",
                          ),
                          content: Image(
                            image: MemoryImage(image),
                          ),
                        );
                      },
                    );
                  }
                } catch (e) {
                  setState(() {
                    errorMessage = 'Error in onDetect: $e';
                  });
                }
              },
            ),
          ),
          if (errorMessage.isNotEmpty)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Error: $errorMessage',
                style: TextStyle(color: Colors.red),
              ),
            ),
        ],
      ),
    );
  }
}
