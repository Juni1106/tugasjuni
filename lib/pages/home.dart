import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome, Jane!'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'What pizza will you be eating today?',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Search pizza',
                prefixIcon: Icon(Icons.search),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  _buildPizzaItem(
                      'Pepperoni Pizza', 6.59, 'assets/pepperoni.png'),
                  _buildPizzaItem('Cheese Pizza', 7.05, 'assets/cheese.png'),
                  _buildPizzaItem(
                      'Mushroom Pizza', 7.54, 'assets/mushroom.png'),
                  _buildPizzaItem('Veggie Pizza', 6.59, 'assets/veggie.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPizzaItem(String name, double price, String image) {
    return Card(
      child: Column(
        children: [
          Image.asset(image, height: 100),
          Text(name, style: TextStyle(fontSize: 18)),
          Text('\$$price', style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
