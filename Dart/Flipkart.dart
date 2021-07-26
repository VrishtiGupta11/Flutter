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

// Class

class User {
  String? email;
  String? name;
  int? ID;
  String? address;
  int? number;

  User({this.email, this.name, this.ID, this.address, this.number}) {
    print("User Details: ");
    print('${email}\n${name}\n${ID}\n${address}\n${number}\n');
  }
}


void main() {
  User user1 = new User(
      email: 'ivrishtigupta@gmail.com',
      name: 'Vrishti Gupta',
      ID: 1915086,
      address: '1234 Ludhiana',
      number: 1234984784);
}
