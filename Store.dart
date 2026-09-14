


class Product {
  String? name;
  double? basePrice;
  int? stockQuantity;
  double discount;

  Product({
    this.name,
    this.basePrice,
    this.stockQuantity,
    this.discount = 0.0,
  });

double get discountedPrice {
    double price = basePrice ?? 0.0;
    if (discount > 0) {
      return price * (1 - discount);
    }
    return price;
  }

  bool get isLowStock {
    return (stockQuantity ?? 0) < 10;
  }
}

void main(){
  Product Gold = new Product(name: "Gold", basePrice: 700.0, stockQuantity: 5, discount: 0.10);
  print("Product Name: ${Gold.name}");
  print("Base Price: \$${Gold.basePrice}");
  print("Discounted Price: \$${Gold.discountedPrice}");
  print("Is Low Stock?: ${Gold.isLowStock}");
}