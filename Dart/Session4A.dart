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
