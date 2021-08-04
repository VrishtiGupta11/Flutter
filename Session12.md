// Synchronous Operation  ->  A synchronous operation blocks other operations from executing until it completes.
// Synchronous Function  -> A function that only performs Synchronous Operations

// Synchronous Function
/*
String? createOrderMessage() {
  var order = fetchUserOrder();
  return 'Your order is: $order';
}

String? fetchUserOrder() {
  Future.delayed(Duration(seconds: 2), () => 'Cheeze Burger');
}

void main() {
  print(createOrderMessage());
}*/

// Future  ->  Represents the result of an asynchronous Operation, and can have two states completed or uncompleted.
/*
Future fetchUserOrder() {
  return Future.delayed(Duration(seconds: 2), () => print("Cheeze Burger"));
}

void main() {
  fetchUserOrder();
  print('Fetching User Order');
}*/

// Asynchronous Operation  ->  Once initiated, an asynchronous operation allows other operations to execute before it completes.
// Asynchrounous Function  ->  An asynchronous function performs atleast one asynchronous operation and can also perform Synchronous operations.

/*
Future createOrderMessage() async {
  var order = await fetchUserOrder();
  return 'Your order is $order';
}

Future fetchUserOrder() =>
    Future.delayed(Duration(seconds: 2), () => 'Cheeze Burger');

Future main() async {
  print("Fetching user Order");
  print(await createOrderMessage());
}
*/

// Example
/*
var apiKeys = ['key1', 'key2', 'key3', 'key4', 'key5'];

Future<String>? validateAPIKey(key) {
  if (apiKeys.contains(key)) {
    return Future.delayed(Duration(seconds: 2), () {
      return "Fetching Some Data...\nNews Fetched from Server...";
    });
  } else {
    // return'Sorry, Authentication failed';
    print('Sorry, Authentication failed');
  }
}

void main() async {
  print("App Started");
  var k = await validateAPIKey("key5");
  print("${k}\nApp Finished");
}
*/

// Example
/*
Future<String> getUserData(String uid) {
  print("Getting Data..");
  return Future.delayed(
      Duration(seconds: 2), () => "${uid} | John Watson | john@example.com");
}

fetchDetails() async {
  print("Fetching Details..");
  String response = await getUserData("john.watson");
  print("Response: $response");
}

void main() async {
  print("App Started");
  var k = await fetchDetails();
  print("App finished");
}
*/

Future<String> getUserData(String uid) {
  print("Getting Data..");
  return Future.delayed(
      Duration(seconds: 2), () => "${uid} | John Watson | john@example.com");
}

fetchDetails() async {
  print("Fetching Details..");
  String response = await getUserData("john.watson");
  return Future.delayed(Duration(seconds: 2), () => "${response}\nThankyou");
}

void main() async {
  print("App Started");
  var finalResponse = await fetchDetails();
  print("Final Response: $finalResponse");
  print("App finished");
}
