import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Menghilangkan tombol back
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome, June!',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'What pizza will you eating today?',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Icon(
              Icons.account_circle,
              size: 40,
              color: Colors.black,
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search bar
            TextField(
              decoration: InputDecoration(
                hintText: 'Search pizza',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                fillColor: Colors.grey[200],
                filled: true,
              ),
            ),
            SizedBox(height: 20),

            // "Favorite" section
            Text(
              'Favorite',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 150, // Adjust the height to fit pizza name
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildPizzaItem('Pepperoni Pizza'),
                  _buildPizzaItem('Cheese Pizza'),
                  _buildPizzaItem('Veggie Pizza'),
                ],
              ),
            ),
            SizedBox(height: 20),

            // "Recommendation for you" section
            Text(
              'Recommendation for you',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 150, // Adjust the height to fit pizza name
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildPizzaItem('Mushroom Pizza'),
                  _buildPizzaItem('BBQ Chicken Pizza'),
                  _buildPizzaItem('Hawaiian Pizza'),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        currentIndex: 0, // Set the current index to Home
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  // Function to build pizza item with name
  Widget _buildPizzaItem(String pizzaName) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: 100,
      child: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          SizedBox(height: 5),
          Text(
            pizzaName,
            style: TextStyle(fontSize: 14),
            textAlign: TextAlign.center, // Center the text
          ),
        ],
      ),
    );
  }
}
