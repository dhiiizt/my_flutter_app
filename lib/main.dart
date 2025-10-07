import 'package:flutter/material.dart';

void main() {
  runApp(const SketchwareProUI());
}

class SketchwareProUI extends StatelessWidget {
  const SketchwareProUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MLX Injector',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF36D1DC),
          brightness: Brightness.light,
        ),
        fontFamily: 'Roboto',
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<void> _onRefresh() async {
    await Future.delayed(const Duration(seconds: 1));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isDesktop = width > 900;

    return Scaffold(
      backgroundColor: Colors.white,
      body: RefreshIndicator(
        onRefresh: _onRefresh,
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // 🔹 Hero Section
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                    horizontal: isDesktop ? 120 : 24, vertical: 100),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF36D1DC), Color(0xFF5B86E5)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'MLX Injector',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: isDesktop ? 60 : 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Epic. Inside out.',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: isDesktop ? 28 : 20,
                      ),
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: const Color(0xFF5B86E5),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text(
                        'Download Now',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),

              // 🔹 Features Section
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: isDesktop ? 120 : 24, vertical: 60),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'What makes MLX Injector special?',
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 30),
                    Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 24,
                      runSpacing: 24,
                      children: [
                        _featureCard(Icons.code, 'Open Source',
                            'Completely free and open-source project.'),
                        _featureCard(Icons.build, 'Powerful Tools',
                            'Advanced features to extend Android development.'),
                        _featureCard(Icons.color_lens, 'Beautiful UI',
                            'Modern interface with Material You design.'),
                        _featureCard(Icons.people, 'Community',
                            'Supported by thousands of developers worldwide.'),
                      ],
                    ),
                  ],
                ),
              ),

              // 🔹 Stats Section
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: isDesktop ? 120 : 24, vertical: 80),
                color: const Color(0xFFF8F9FB),
                child: Column(
                  children: [
                    const Text(
                      'Community Stats',
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 40),
                    Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 40,
                      runSpacing: 40,
                      children: [
                        _statBox('100K+', 'Active Users'),
                        _statBox('1M+', 'Downloads'),
                        _statBox('10K+', 'Projects Shared'),
                      ],
                    ),
                  ],
                ),
              ),

              // 🔹 CTA Section
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: isDesktop ? 120 : 24, vertical: 100),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF5B86E5), Color(0xFF36D1DC)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      'Join the MLX Injector Community Today!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: isDesktop ? 32 : 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: const Color(0xFF5B86E5),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text(
                        'Get Started',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),

              // 🔹 Footer Section
              Container(
                width: double.infinity,
                color: const Color(0xFF111111),
                padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 24),
                child: Column(
                  children: const [
                    Text(
                      'EsaNeru © 2025. All rights reserved.',
                      style: TextStyle(color: Colors.white70),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Made with ❤️ by EsaNeru Team',
                      style: TextStyle(color: Colors.white38, fontSize: 13),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _featureCard(IconData icon, String title, String desc) {
    return Container(
      width: 250,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
              color: Colors.black12, blurRadius: 10, offset: Offset(0, 6)),
        ],
      ),
      child: Column(
        children: [
          Icon(icon, size: 50, color: const Color(0xFF5B86E5)),
          const SizedBox(height: 16),
          Text(title,
              style:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Text(desc,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.black54)),
        ],
      ),
    );
  }

  Widget _statBox(String number, String label) {
    return Column(
      children: [
        Text(number,
            style: const TextStyle(
                fontSize: 34, fontWeight: FontWeight.bold, color: Colors.black)),
        const SizedBox(height: 8),
        Text(label,
            style: const TextStyle(fontSize: 16, color: Colors.black54)),
      ],
    );
  }
}