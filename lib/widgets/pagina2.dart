import 'package:flutter/material.dart';


// --- SEGUNDA PÁGINA ---
class PaginaDos extends StatelessWidget {
  const PaginaDos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Segunda Página', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  'https://picsum.photos/300/200',
                  height: 200,
                  // The 'placeholder' parameter is not defined for Image.network.
                  // Use 'loadingBuilder' instead to show a loading indicator.
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) {
                      return child; // Image is fully loaded, show it
                    }
                    return const Center(
                      child: CircularProgressIndicator(), // Show indicator while loading
                    );
                  },
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green[100]),
                onPressed: () => Navigator.pushNamed(context, '/tercera'),
                child: const Text('Ir a la Tercera Página', style: TextStyle(color: Colors.black)),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Regresar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}