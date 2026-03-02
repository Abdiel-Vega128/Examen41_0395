import 'package:flutter/material.dart';

class Pantalla2 extends StatelessWidget {
  const Pantalla2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Italian Menu"),
        backgroundColor: Colors.green[700],
        actions: const [Icon(Icons.notifications_none), Icon(Icons.shopping_bag_outlined)],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Good day, Amelia", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 15),
            TextField(
              decoration: InputDecoration(
                hintText: "search something",
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey[100],
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
              ),
            ),
            const SizedBox(height: 20),
            // Cuadrícula de categorías simulando el diseño
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(color: Colors.grey[50], borderRadius: BorderRadius.circular(20)),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                mainAxisSpacing: 10,
                children: [
                  _catItem(Icons.local_pizza, "pizzas"),
                  _catItem(Icons.wine_bar, "wine"),
                  _catItem(Icons.icecream, "gelato"),
                  _catItem(Icons.flatware, "pasta"),
                  _catItem(Icons.set_meal, "seafood"),
                  _catItem(Icons.more_horiz, "others"),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text("Italian categories", style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _iconBtn(Icons.star, "chef", context),
                _iconBtn(Icons.favorite, "best", context),
                _iconBtn(Icons.local_fire_department, "hot", context),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _catItem(IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, size: 30),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }

  Widget _iconBtn(IconData icon, String label, BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/pantalla3'),
      child: Column(
        children: [
          Icon(icon, size: 40),
          Text(label),
        ],
      ),
    );
  }
}