```dart
void main() {
  // var cabOptions = ["Mini", "Sedan", "Bike"];
  // var paymentOptions = ["Upi", "Net Banking", "Card", "Cash"];

  // Indexed for loop

  // for (int i = 0; i < cabOptions.length; i++) {
  //   print(cabOptions[i]);
  // }

  // Enhanced Loop --> Read Only

  // for (var option in cabOptions) {
  //   print(option);
  // }

  // for each loop -> Read Only

  // cabOptions.forEach((element) {
  //   print(element);
  // });

  // var dish1 = {'title': 'Veggie Burger', 'price': 200};
  // var dish2 = {'title': 'Noodles', 'price': 100};
  // var dish3 = {'title': 'Mc Spicy Burger', 'price': 250};
  // var dish4 = {'title': 'Coke', 'price': 50};
  // var dish5 = {'title': 'Fries', 'price': 80};

  // var menu = [dish1, dish2, dish3, dish4, dish5];

  // // menu.forEach((element) {
  // //   print(element['title']);
  // // });

  // dish1.forEach((key, value) {
  //   print('${key}-->${value}');
  // });

  var menu = {
    'burger': {"title": "Veggie Burger", "price": 100, "ratings": 4.5},
    'noodles': {
      "title": "Chillie Garlic Noodles",
      "price": 200,
      "ratings": 4.7
    },
    'dal': {"title": "Dal Makhani", "price": 250, "ratings": 3.9},
    'paneer': {"title": "Paneer Butter Masala", "price": 350, "ratings": 4.3}
  };

  print(menu.length);
  menu.forEach((key, value) {
    print("${key}-->${value}");

    value.forEach((key, value) {
      print("${key}-->${value}");
    });
  });
}


// import 'dart:io';

// void main() {
//   print("Enter your name?");
//   // Reading name of the Geek
//   String? name = stdin.readLineSync();

//   // Printing the name
//   print("Hello, $name! \nWelcome to GeeksforGeeks!!");
// }
```

```dart
void main() {
  var Menu = {
    'burger': {'Price': 300, 'rating': 3.5},
    'Pizza': {'Price': 400, 'rating': 3.9},
    'Maggie': {'Price': 40, 'rating': 4.5},
  };
  List Keys = Menu.keys.toList();
  List Values = Menu.values.toList();

  for (var i = 0; i < Menu.length; i++) {
    print('${Keys[i]} \t\t ${Values[i]}');
  }

  // Sorting

  for (var i = 0; i < Menu.length; i++) {
    for (var j = 0; j < Menu.length; j++) {
      if (Values[i]['rating'] > Values[j]['rating']) {
        var temp = Values[j]['rating'];
        Values[j]['rating'] = Values[i]['rating'];
        Values[i]['rating'] = temp;

        var temp1 = Keys[j];
        Keys[j] = Keys[i];
        Keys[i] = temp1;
      }
    }
  }

  print("\nSorted Data\n");
  for (var i = 0; i < Menu.length; i++) {
    print('${Keys[i]} \t\t ${Values[i]}');
  }
}

```

```dart
  var filteredDishes = shoppingCart.where((element) => element["ratings"]>4.2);
  print(filteredDishes);

  print("~~~~~~~~~~~~~~~~");
  var flatDiscount = 30;
  var discountedDishes = shoppingCart.map((element) => element["price"]-=flatDiscount);
  print(discountedDishes);
```
