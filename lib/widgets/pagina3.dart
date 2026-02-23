import 'package:flutter/material.dart';


// --- TERCERA PÁGINA ---
class PaginaTres extends StatelessWidget {
  const PaginaTres({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tercera Página', style: TextStyle(color: Colors.grey)),
        backgroundColor: const Color(0xFFF5F5DC), // Beige claro
        iconTheme: const IconThemeData(color: Colors.grey),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    // Fix: Replaced deprecated .withOpacity with Color.fromARGB
                    color: const Color.fromARGB(51, 0, 0, 0), // 51 is 20% of 255 (0.2 * 255)
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: const Center(
                child: Text(
                  '200x200',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () => Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false),
              child: const Text('Volver al Inicio (Reset)'),
            ),
          ],
        ),
      ),
    );
  }
}