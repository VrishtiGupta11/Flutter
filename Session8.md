### Without Stateless Widget
```dart
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("My App"),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Text(
            "Hello, Welcome to MyApp",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
              color: Colors.lightGreen,
            ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("Click"),
        backgroundColor: Colors.deepOrange,
      ),
    ),
  ));
}

```
### With Stateless Widget
```dart
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Text(
          "Hello, Welcome to MyApp",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
            color: Colors.lightGreen,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("Click"),
        backgroundColor: Colors.deepOrange,
      ),
    );
  }
}

```
![image](https://user-images.githubusercontent.com/53931644/127541395-c39a60ec-cfe5-4d19-8347-228d4d82772b.png)

### Displaying Image
```dart
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Image(
          image: NetworkImage('https://images.pexels.com/photos/235986/pexels-photo-235986.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("Click"),
        backgroundColor: Colors.deepOrange,
      ),
    );
  }
}

```

![image](https://user-images.githubusercontent.com/53931644/127541262-d5988bb9-2305-4694-be63-e6a724d10775.png)

### To Add Icon

```dart
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.mail
            ),
            label: Text("Mail Me!"),
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("Click"),
        backgroundColor: Colors.deepOrange,
      ),
    );
  }
}

```

![image](https://user-images.githubusercontent.com/53931644/127544624-42937d28-db36-48db-acbf-26f40c680640.png)

```dart
import 'package:flutter/material.dart';

final Color darkBlue = Color.fromARGB(255, 84, 32, 95);
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
         title: Text('My APP'), 
          centerTitle: true,
          
        ),
        body: Center(
          child: HomePage(),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [Text('Welcome to MyApp'),
        SizedBox(height: 10,),
        Divider(),
        SizedBox(height: 10,),
        Text("Version : 7.1.1")],
      ),
    );
  }
}


```
