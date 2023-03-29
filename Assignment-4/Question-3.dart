// Create a list of maps, where each map represents a product with a name, price, and quantity. Sort the list by the total cost of each product (price x quantity) in descending order.
void main() {
  List<Map<String, dynamic>> products = [
    {'name': 'Chicken', 'price': 10, 'quantity': 2},
    {'name': 'Egg', 'price': 5, 'quantity': 3},
    {'name': 'Paneer', 'price': 20, 'quantity': 1},
    {'name': 'Biscuit', 'price': 15, 'quantity': 4},
  ];

  products.sort((a, b) =>
      (b['price'] * b['quantity']).compareTo(a['price'] * a['quantity']));

  print(products);
}
