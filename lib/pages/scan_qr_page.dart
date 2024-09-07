import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScanQQCodePage extends StatefulWidget {
  const ScanQQCodePage({super.key});

  @override
  State<ScanQQCodePage> createState() => _ScanQQCodePageState();
}

class _ScanQQCodePageState extends State<ScanQQCodePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scan QR Code"),
        actions: [
          IconButton(onPressed: () {
            Navigator.popAndPushNamed(context, "/generate");
          }, icon: const Icon(
            Icons.qr_code
          ))
        ],
      ),
      body: MobileScanner(
        onDetect: (capture) {
            
        },
      ),
    );
  }
}