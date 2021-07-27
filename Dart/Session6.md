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
```dart
// Structure of Object
// MODEL 
class Dish{
  // Attributes 
  // Belongs to Object :)
  String? title;
  int? price;

  Dish({this.title, this.price});

  // Constructor:
  // It is used to give initial values to attributes
  /*Dish({String title="NA", int price=0}){
    // LHS: this.title -> represent title attribute of object
    // RHS: title is input of the constructor
    // this is a reference variable which holds the hashcode of current object
    this.title = title;
    this.price = price;
    print("this is:"+this.hashCode.toString());
  }*/

  void setTitle(String title){
    this.title = title;
  }

  void setPrice(int price){
    this.price = price;
  }

  String getTitle(){
    return title!;
  }

  int getPrice(){
    return price!;
  }

  // Method
  void showDish(){
    print("-------------------------");
    print("Dish: ${title}\n\u20b9${price}");
    print("-------------------------");
  }
}

class Menu{
    String? title;
    int? numOfDishes; 
    List<Dish>? dishes; // 1 to many

    Menu({this.title, this.numOfDishes, this.dishes});

    void showMenu(){
      print("MENU DETAILS");
      print("~~~~~~~~~~~~");

      print("Title ${title} [${numOfDishes}]");

      dishes!.forEach((dish) {
        dish.showDish();
      });

    }
}

class Restaurant{
    String? name, phone, email, address, operatingHours;
    double? ratings;
    Menu? menu; // 1 to 1
    Restaurant({this.name, this.phone, this.email, this.address, this.ratings, this.operatingHours, this.menu});

    void showRestaurant(){
      print("#######################");
      print("${name} ${ratings}\n${operatingHours}\n${address}");
      print("#######################");

      menu!.showMenu();
    }
}

void main() {
  
  /*Dish dish1 = new Dish(title: "Dal Makhani", price: 200);
  Dish dish2 = Dish(title: "Paneer Butter Masala", price: 300);
  
  Dish dish3 = Dish();
  dish3.title = "Noodles";
  dish3.price = 15;
  print("dish1 is: "+dish1.hashCode.toString());
  print("dish2 is: "+dish2.hashCode.toString());
  
  dish1.showDish();
  dish2.showDish();
  */

  //var dishes = <Dish>[dish1, dish2, dish3];
  //Menu menu = Menu(title: "Veggie Delight", dishes:  <Dish>[dish1, dish2, dish3], numOfDishes: 3);
  //Menu menu = Menu(title: "Veggie Delight", dishes:  <Dish>[Dish(title: "Dal Makhani", price: 200), dish2, dish3], numOfDishes: 3);
  
  /*Menu menu = Menu(
    title: "Veggie Delight", 
    dishes:  <Dish>[
      Dish(
        title: "Dal Makhani", 
        price: 200
        ), 
      Dish(
        title: "Paneer Butter Masala", 
        price: 300
        ), 
      Dish(
        title: "Noodles", 
        price: 150
        )
      ], 
      numOfDishes: 3
  );
  menu.showMenu();*/

  Restaurant(
    name: "Johns Cafe Shop",
    phone: "+91 161 555555",
    email: "john.cafe@example.com",
    operatingHours: "10:00 to 20:00",
    ratings: 4.5,
    address: "Model Town",
    menu: Menu(
      title: "Veggie Delight",
      numOfDishes: 3,
      dishes: <Dish>[
      Dish(
        title: "Dal Makhani", 
        price: 200
        ), 
      Dish(
        title: "Paneer Butter Masala", 
        price: 300
        ), 
      Dish(
        title: "Noodles", 
        price: 150
        )
      ], 
    )
  ).showRestaurant();
 
}
```

```dart
/*
  Shoe
  id, name, brand, price, color, size, soleType
  TV
  id, name, brand, price, color, size, technology
  MobilePhone
  id, name, brand, price, color, size, ram, memory, isSdCardSlotAvailable
*/

// IS-A -> Inheritance

class Product{
  String? id, name, brand, color;
  int? size, price;

  Product({this.id, this.name, this.brand, this.color, this.size, this.price});

  Map toMap(){
    return {
      "id": id,
      "name": name,
      "brand": brand,
      "color": color,
      "size": size,
      "price": price,
    };
  }

  @override
  String toString() {
    return {
      "id": id,
      "name": name,
      "brand": brand,
      "color": color,
      "size": size,
      "price": price,
    }.toString();
  }
}

class Shoe extends Product{ // Shoe IS-A Product
  String? soleType;
  Shoe({this.soleType});
}

class TV extends Product{

  String? technology;
  TV({id, name, brand, color, size, price, this.technology}): super(id:id, name: name, brand: brand, color: color, size: size, price: price);
  
  @override
  String toString() {
    String parentData = "PARENT: " +super.toString();
    String myData = "\nCHILD: "+{
      "technology": technology,
    }.toString();

    return parentData + myData;
  }

}

class MobilePhone extends Product{
  int? ram, memory;
  bool? isSdCardSlotAvailable;

  MobilePhone({this.ram, this.memory, this.isSdCardSlotAvailable});
}

void main(){
  Product product = Product(
    id: "ID101",
    name: "iPhone",
    price: 80000,
    color: "black",
    size: 6,
    brand: "Apple"
  );

  print(product);

  TV tv = TV(
    brand: "Samsung",
    color: "Black",
    id: "LED101",
    name: "Samsung OLED TV",
    price: 50000,
    size: 50,
    technology: "OLED"
  );

  print(tv);
}
```
