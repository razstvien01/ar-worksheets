import 'package:ar_worksheets/pages/scan_qr_page.dart';
import 'package:flutter/material.dart';

class ScanQrFab extends StatelessWidget {
  const ScanQrFab({super.key});

  void _navigateToScanQrPage(context) {
      // Navigate to ScanQrPage when the button is pressed
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ScanQQCodePage()),
      );
    }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        _navigateToScanQrPage(context);
      },
      tooltip: 'Scan QR Code',
      child: const Icon(Icons.qr_code),
    );
  }
}