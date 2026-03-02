import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Abdiel Daniel Vega Sanchez 6-J"),
        backgroundColor: Colors.red[800],
        actions: const [Icon(Icons.restaurant_menu), Icon(Icons.person)],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Monitoring and\ntrain your appetite", // Siguiendo el texto del diseño original
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w300),
            ),
            const SizedBox(height: 20),
            // Imagen corregida con manejador de errores
            Image.network(
              'https://raw.githubusercontent.com/Abdiel-Vega128/Examen41_0395/refs/heads/main/il_fullxfull.5954933532_4zgi-removebg-preview.png',
              height: 300,
              errorBuilder: (context, error, stackTrace) => const Icon(Icons.broken_image, size: 100),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
              ),
              onPressed: () => Navigator.pushNamed(context, '/pantalla2'),
              child: const Text("Sign up", style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
            TextButton(
              onPressed: () {},
              child: const Text("I have an account", style: TextStyle(color: Colors.grey)),
            ),
          ],
        ),
      ),
    );
  }
}