import 'package:flutter/material.dart';

void main() {
  runApp(ShoppingCartApp());
}

class ShoppingCartApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping Cart',
      home: ShoppingCartScreen(),
    );
  }
}

class ShoppingCartScreen extends StatefulWidget {
  @override
  _ShoppingCartScreenState createState() => _ShoppingCartScreenState();
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
  int item1Quantity = 0;
  int item2Quantity = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Icon(Icons.shopping_cart),
            SizedBox(width: 8),
            Text('Shopping Cart'),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            buildCartItem(
              'Item 1',
              10,
              item1Quantity,
              (int newValue) {
                setState(() {
                  item1Quantity = newValue;
                });
              },
            ),
            SizedBox(height: 20),
            buildCartItem(
              'Item 2',
              15,
              item2Quantity,
              (int newValue) {
                setState(() {
                  item2Quantity = newValue;
                });
              },
            ),
            SizedBox(height: 20),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Subtotal: \$${(item1Quantity * 10) + (item2Quantity * 15)}',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    'Tax: \$${((item1Quantity * 10) + (item2Quantity * 15)) * 0.1}',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    'Total: \$${((item1Quantity * 10) + (item2Quantity * 15)) * 1.1}',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Add your checkout logic here
                    },
                    child: Text('Checkout'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCartItem(
      String name, int price, int quantity, ValueChanged<int> onChanged) {
    return Row(
      children: <Widget>[
        Image.asset(
          'assets/ducks.jpg',
          width: 100,
          height: 100,
        ),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '$name - \$${price.toString()}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () {
                    if (quantity > 0) {
                      onChanged(quantity - 1);
                    }
                  },
                ),
                Text(quantity.toString()),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    onChanged(quantity + 1);
                  },
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
