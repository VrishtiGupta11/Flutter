```dart
void main(){
    
    var x = 10;
    var p = 10;

    print("x is: ${x} and its type is: ${x.runtimeType} ");
    print("x hashCode is: ${x.hashCode}");

    // Initialization Before Use Princple
    //int y;
    int? y; // NULLABLE
    print("y is: ${y}");

    String message = y.toString();
    print(message);

    // x is a reference variable
    // which will always hold hashcodes

    var p1Price = 130;
    var p2Price = 1200;

    var p3Price = 260;

    //message = y!.toString();

    // ? and !
    // ? makes variables to hold nulls and shall work only by specifying data type
    // ! is a safety check
    // i.e. we will execute any operation on ref variable 
    // provided variable is not null

    //String name = "";
    //String? name;

    //if(name.isEmpty){
    //  print("Please Enter a Valid Name First");
    //}
    
    // execute toString if name is not null
    // name!.toString();

    // Lazy Initialization
    late String response;
    //response = getNewsFromAPI();
    //print("name is: ${response}");
}
```

```dart
const appVersion = 1.0;

void main(){
  // const is generally used in functions i.e. local scope
  // or global scope
  const String host = "https://wwww.abc.com/";
  const String REGISTER_API = host+"register";
  print("Register Request Goes on ${REGISTER_API}");

  // final marks the instance variables i.e. attributes of an object as final
  final String appTitle = "WhatsApp";
  print("App Name is: ${appTitle}");

}
```
