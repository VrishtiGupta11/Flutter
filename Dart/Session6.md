```dart
/*
  Zomato
    Restaurant     (1 Restaurant  ->  1 menu)
      name, phone, email, address, ratings, operatingHours, menu
    Menu      (1 Menu  ->  many Dishes)
      title, numOfDishes, dishes
    Dish  
      title, price
    Customer
      name, phone, email, address, orders
    Order
      oid, date, time, dishes, total, customer 
    
    Objects are Related
      HAS-A
        1 to 1
        1 to *
        * to 1
        * to *  

 */
// dart.io/2.9

class Dish {
  String? title;
  int? price;

  Dish({this.title, this.price});

  void showDish() {
    print("${title}  \u20b9${price}");
  }
}

class Menu {
  String? title;
  int? numOfDishes;
  List<Dish>? dishes;

  Menu({this.dishes, this.numOfDishes, this.title});

  showMenu() {
    print("\nMenu Details\n");
    print("${title}  ${numOfDishes}\n");
    dishes!.forEach((element) {
      element.showDish();
    });
  }
}

class Restaurant {
  String? name, email, address, phone, operatingHours;
  double? ratings;
  Menu? menu;

  Restaurant(
      {this.address,
      this.email,
      this.menu,
      this.name,
      this.operatingHours,
      this.phone,
      this.ratings});

  showRestaurant() {
    print("${name}\n${ratings}\n${operatingHours}\n${address}\n${email}\n");
    print("-------------");
    menu!.showMenu();
  }
}

void main() {
  Dish d1 = new Dish(title: "Sandwich", price: 50);
  Dish d2 = new Dish(title: "Burger", price: 100);
  Dish d3 = new Dish(title: "Pizza", price: 200);

  Menu m = Menu(dishes: [d1, d2, d3], numOfDishes: 3, title: "Veggie Delight");
  Restaurant(
          name: "Johns Cafe Shop",
          ratings: 4.5,
          operatingHours: "10:00 to 20:00",
          address: "Model Town",
          email: "john.cafe@example.com",
          menu: m)
      .showRestaurant();
}

```
