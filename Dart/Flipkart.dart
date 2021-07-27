// Flipkart Attributes

/*
  ListOfProducts / Category
    Electronics, Hosiery, Grocery, Toys, TravellingKit, Fashion, Furniture, etc.
  Product
    Name, ProductCode, Price, Discount, Category, Description, Rating, Picture
  TypesOfUsers
    Customers, Sellers, Developers, SalesMan, CustomerCarePersons
  User 
    EmailAddress, Name, ID, Address, PhoneNumber, TypeOfUsers
  Order
    OrderNo., date, time, Products, total, Customer, Sellers
  Customer
    Order, User
  Sellers
    Order, User
  ShoppingCart
    Product, PromoCode, Order, User
  PaymentMOde 
    Card, Netbanking, CashOnDelivery, Bank
*/

// Class/ Structure of Object/ POJO (Plain Old Java Object)

class Product {
  String? name;
  String? code;
  double? price;
  double? discount;
  String? category;
  String? description;
  double? rating;

  Product(
      {this.name,
      this.code,
      this.price,
      this.discount,
      this.category,
      this.description,
      this.rating});
  showProduct() {
    print(
        "${name}\n${code}\n${price}\n${discount}\n${category}\n${description}\n${rating}\n");
  }
}

class User {
  String? email;
  String? name;
  int? ID;
  String? address;
  int? number;
  List<Product>? product; // (1 - *) i.e. 1 user many Products
  int? noOfProducts;

  User(
      {this.email,
      this.name,
      this.ID,
      this.address,
      this.number,
      this.product,
      this.noOfProducts}) {
    print("--------------");
    print("User Details: ");
    print("--------------");
    print('Email - ${email}\nName - ${name}\nUser ID - ${ID}\nAddress - ${address}\nPhone Number - ${number}\nNo. of Profucts - ${noOfProducts}\n');
    
    print("-----------------");
    print("Product Details: ");
    print("-----------------");

    product!.forEach((element) {
      element.showProduct();
    });
  }
}

void main() {
  User(
      ID: 1915086,
      address: '1234 Ludhiana',
      email: 'ivrishtigupta@gmail.com',
      name: 'Vrishti Gupta',
      number: 1234567890,
      noOfProducts: 2,
      product: [
        Product(
            category: 'Electronics',
            code: 'L3501',
            description:
                'DELL Inspiron 3501, 256GB SSD, 1TB HD, LifeTime MS Office, 15.7\" display',
            discount: 0,
            name: 'Dell Laptop',
            price: 58000,
            rating: 4.5),
        Product(
            category: 'Furniture',
            code: 'F0056',
            description: '3 Door Wooden Wardrobe with Drawer and Mirror',
            discount: 0,
            name: 'Brown Almirah',
            price: 12000,
            rating: 4.2)
      ]);
}
