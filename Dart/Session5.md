```dart
/*
  Functions.
  What are Functions
    they contain code snippets
    which will be executed in a sequence
  Functions Vs Methods
  How to create Functions
  How to Execute Functions
  Why Functions ?
    since we will be writing the same code again and again
    piece of logic is repeated
*/

// findMax(List data){
//   var max = data[0];
//   for(int i=0;i<data.length;i++){
//     if(data[i] > max){
//       max = data[i];
//     }
//   }
//   print("max is: ${max}");
// }

findMax(List data){
  var max = data[0];
  for(int i=0;i<data.length;i++){
    if(data[i] > max){
      max = data[i];
    }
  }
  
  return max;
}

addNumbers1(int a, int b, int c){
  int sum = a+b+c;
  return sum;
}

addNumbers2({int a=1, int b=2, int c=3}){
  int sum = a+b+c;
  return sum;
}


addNumbers3(int a, int b, int c, [String name="Fionna", int age=10]){
  int sum = a+b+c;
  
  print("Name is: ${name}");

  print("sum is: ${sum}");
}

// Named Parameters
addNumbers4({int a=0, int b=0, int c=0, String name="Fionna", int age=10}){
  int sum = a+b+c;
  
  print("Name is: ${name}");

  print("sum is: ${sum}");
}

void main(){

  var marks = [88, 77, 90, 69, 85];
  var heights = [156, 134, 122, 155, 162, 110];
  var productPrices = [3000, 2000, 4500, 1200, 3100];

  var result = findMax(marks);
  print("max in marks is: ${result}");
  result = findMax(heights);
  print("max in heights is: ${result}");
  result = findMax(productPrices);
  print("max in productPrices is: ${result}");

  result = addNumbers1(10, 20, 30);
  print("Add Numbers: ${result}");

  result = addNumbers2(a: 10, c: 40);
  print("Add Numbers: ${result}");

  addNumbers3(11, 22, 33);

  /*var max = marks[0];
  for(int i=0;i<marks.length;i++){
    if(marks[i] > max){
      max = marks[i];
    }
  }
  print("max is: ${max}");
  max = heights[0];
  for(int i=0;i<heights.length;i++){
    if(heights[i] > max){
      max = heights[i];
    }
  }
  print("max is: ${max}");
  max = productPrices[0];
  for(int i=0;i<productPrices.length;i++){
    if(productPrices[i] > max){
      max = productPrices[i];
    }
  }
  print("max is: ${max}");*/

}
```
```dart
void printNumber({int num:5}){

  if(num > 0){
    print(num);
    printNumber(num: num-1);
  }else{
    return;
  }
}

void main(){

  for(int i=5;i>0;i--){
    print(i);
  }

  print("~~~~~~~~~");

  printNumber();
  print("~~~~~~~~~");
  printNumber(num: 10);

}
```
```dart
/*
  // OOPS
  What is an Object ?
    It is a Multi Value Container
    can be homogoneous or hetrogeneous
    so that we can perform customizations
  What is a Class ?
    Textual Representation of an Object
    we will code an Object as Class :)
  Principle of OOPS:
    1 -> attributes | think of data associated with object
    2 -> class      | create its textual representation
    3 -> object     | from the class create a real object in memory
  Zomato
    Restaurant
      name, phone, email, address, ratings, operatingHours, menu
    Menu
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
      Done with the help of reference copy :)     
*/

// Structure of Object

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

  // Method
  void showDish(){
    print("Dish Details: ${title} ${price}");
  }
}

void main() {
  
  Dish dish1 = new Dish(title: "Dal Makhani", price: 200);
  Dish dish2 = Dish(title: "Paneer Butter Masala", price: 300);
  
  Dish dish3 = Dish();

  print("dish1 is: "+dish1.hashCode.toString());
  print("dish2 is: "+dish2.hashCode.toString());
  
  dish1.showDish();
  dish2.showDish();
 
}
```
