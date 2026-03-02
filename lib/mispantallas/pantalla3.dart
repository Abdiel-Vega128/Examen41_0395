import 'package:flutter/material.dart';

class Pantalla3 extends StatelessWidget {
  const Pantalla3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Info"),
        backgroundColor: Colors.orange[800],
        actions: const [Icon(Icons.share), Icon(Icons.favorite_border)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("< Pizza Margherita", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Center(
              child: Image.network(
                'https://raw.githubusercontent.com/Abdiel-Vega128/Examen41_0395/refs/heads/main/Pizza-Margherita-on-transparent-background-PNG.png',
                height: 220,
                errorBuilder: (context, error, stackTrace) => const Icon(Icons.image_not_supported, size: 100),
              ),
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.circle, size: 8, color: Colors.orange),
                SizedBox(width: 5),
                Icon(Icons.circle, size: 8, color: Colors.grey),
              ],
            ),
            const SizedBox(height: 20),
            const Text("\$ 250 / kg", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const Text("premium tuna dry cat food (adult)", style: TextStyle(color: Colors.grey)), // Texto del diseño
            const SizedBox(height: 10),
            const Text("★★★★★ 300 reviews", style: TextStyle(color: Colors.orange)),
            const Divider(),
            const Text("Product Information", style: TextStyle(fontWeight: FontWeight.bold)),
            const Text("Authentic Italian pizza with fresh basil and mozzarella."),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                    child: const Text("add to cart", style: TextStyle(color: Colors.white)),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text("go to cart"),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}