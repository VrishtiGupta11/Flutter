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