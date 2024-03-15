void main() {
  displayFruitDetailos(fruits);
  applyPriceDiscount(discount, fruits);
}

var fruits = [
  {"name": "apple", "color": "red", "price": 100},
  {"name": "banana", "color": "yellow", "price": 200},
  {"name": "graps", "color": "purple", "price": 3.0},
];

void displayFruitDetailos(data) {
  for (var element in data) {
    print(element);
    print(element["name"]);
    print(element["color"]);
    var n = element["price"];
    print("\$$n");
  }
}

int discount = 10;
void applyPriceDiscount(discount, fruits) {
  for (var element in fruits) {
    // print(element);
    // print(element["name"]);
    // print(element["color"]);
    var disPrice = (element["price"] / 100) * discount;
    var price = element["price"] - disPrice;

    print("\$$price");
  }
}
