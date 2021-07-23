import 'dart:io';

void main() {
  var menu = {
    'burger': {"title": "Veggie Burger", "price": 100, "ratings": 4.5},
    'noodles': {
      "title": "Chillie Garlic Noodles",
      "price": 200,
      "ratings": 3.9
    },
    'dal': {"title": "Dal Makhani", "price": 250, "ratings": 3.7},
    'paneer': {"title": "Paneer Butter Masala", "price": 350, "ratings": 4.1},
    'sandwich': {"title": "Veg Grilled Sandwich", "price": 110, "ratings": 4.2}
  };

  // Sorting of dishes on the basis of rating

  List value = menu.values.toList();
  List key = menu.keys.toList();

  for (int i = 0; i < menu.length; i++) {
    for (int j = 0; j < menu.length; j++) {
      if (value[i]['ratings'] > value[j]['ratings']) {
        var temp = value[i];
        value[i] = value[j];
        value[j] = temp;

        var temp1 = key[i];
        key[i] = key[j];
        key[j] = temp1;
      }
    }
  }

  print("\n\t\t\t------------------------------");
  print("\t\t\t Menu on the basis of Ratings");
  print("\t\t\t------------------------------\n");

  for (var i = 0; i < menu.length; i++) {
    print("${key[i]} \t\t ${value[i]}\n");
  }

  print("\n\t\t\t----------------------------------");
  print("\t\t\t Add Dishes to your Shopping Cart");
  print("\t\t\t----------------------------------\n");

  // Shopping Cart

  var shoppingCart = [];
  double amount = 0;
  double discount = 0;

  while (true) {
    print("Enter Dish and Quantity to add or no to Quit");
    var choice = stdin.readLineSync();

    if (choice == "no") {
      break;
    }
    if (menu.containsKey(choice)) {
      shoppingCart.add(menu[choice]);
      amount += ((menu[choice]!["price"] as int));
    } else {
      print("Sorry, ${choice} is not available at the moment");
    }
  }

  print("\n\t\t\t--------------------");
  print("\t\t\t Your Shopping Cart");
  print("\t\t\t--------------------\n");

  print("Your Shopping Cart has ${shoppingCart.length} items : \n");
  // shoppingCart.forEach((element) {
  //   print("${element}\n");
  // });
  for (var i = 0; i < shoppingCart.length; i++) {
    print("${shoppingCart[i]}");
  }
  print("Payable Amount: \u20b9${amount}\n");

  // PromoCode

  var promoCode1 = "BINGO5";
  var promoCode2 = "BINGO10";
  var promoCode3 = "BINGO15";

  print("Enter PromoCode: ");
  var promoCode = stdin.readLineSync();

  if (amount > 150 && promoCode == promoCode1) {
    discount = 0.05 * amount;
  } else if (amount > 200 && promoCode == promoCode2) {
    discount = 0.1 * amount;
  } else if (amount > 300 && promoCode == promoCode3) {
    discount = 0.15 * amount;
  } else {
    print("Invalid Promocode!");
  }
  if (discount > 200) {
    amount -= 200;
  } else {
    amount -= discount;
  }

  print("\n\t\t\t-------------------");
  print("\t\t\t Please pay \u20b9${amount}");
  print("\t\t\t-------------------\n");
}
