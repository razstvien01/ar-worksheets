import 'package:flutter/material.dart';
import 'pages/scan_qr_page.dart'; // Import the ScanQrPage

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _navigateToScanQrPage() {
    // Navigate to ScanQrPage when the button is pressed
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ScanQQCodePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Press the button to scan a QR code:'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _navigateToScanQrPage,
        tooltip: 'Scan QR Code',
        child: const Icon(Icons.qr_code),
      ),
    );
  }
}
