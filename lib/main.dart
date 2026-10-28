import 'package:flutter/material.dart';

void main() {
  runApp(const ClipApp());
}

class ClipApp extends StatelessWidget {
  const ClipApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clip App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const ClipAppDemo(),
    );
  }
}

class ClipAppDemo extends StatelessWidget {
  const ClipAppDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text(
          'ClipApp',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: _buildWithLabel(
                    _buildNormalImage('assets/image1.jpg'),
                    'Normal',
                    Colors.grey,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: _buildWithLabel(
                    _buildCircular('assets/image2.jpg'),
                    'BorderRadius.circular',
                    Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: _buildWithLabel(
                    _buildOnly('assets/image3.jpg'),
                    'BorderRadius.only',
                    Colors.grey,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: _buildWithLabel(
                    _buildHardEdge('assets/image4.jpg'),
                    'Clip.hardEdge',
                    Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNormalImage(String path) {
    return Image.asset(
      path,
      fit: BoxFit.cover,
      height: 160,
      width: double.infinity,
    );
  }

  Widget _buildCircular(String path) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(60),
      child: Image.asset(
        path,
        fit: BoxFit.cover,
        height: 160,
        width: double.infinity,
      ),
    );
  }

  Widget _buildOnly(String path) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(60),
        topRight: Radius.circular(60),
        bottomLeft: Radius.circular(0),
        bottomRight: Radius.circular(0),
      ),
      child: Image.asset(
        path,
        fit: BoxFit.cover,
        height: 160,
        width: double.infinity,
      ),
    );
  }

  Widget _buildHardEdge(String path) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(60),
      clipBehavior: Clip.hardEdge,
      child: Image.asset(
        path,
        fit: BoxFit.cover,
        height: 160,
        width: double.infinity,
      ),
    );
  }

  Widget _buildWithLabel(Widget child, String label, Color color) {
    return Column(
      children: [
        child,
        const SizedBox(height: 6),
        Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w600,
            color: color,
          ),
        ),
      ],
    );
  }
}