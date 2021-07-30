### StateFull Widget

#### Change of Quotes on Clicking Next Quote
```dart
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var quotes = ['Everything happens for a reason',
    'Be happy Always',
    'Search the candle rather than cursing the darkness',
    'Be Exceptional'
  ];
  
  var ind = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is My App'),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children:[
            SizedBox(height: 100,),
            Text(quotes[ind]),
            SizedBox(height: 100,),
            Divider(),
            InkWell(
              child: Text('Next Quote'),

              onTap: () {
                setState(() {
                  ind++;
                  ind = ind % quotes.length;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}

```

![image](https://user-images.githubusercontent.com/53931644/127601629-11ba909b-2cb6-4c79-ba10-44f9a23436e2.png)

#### Change Color (Way - 1)
```dart
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List color = [Colors.grey, Colors.brown, Colors.redAccent, Colors.blueAccent, Colors.deepPurple, Colors.greenAccent];

  var ind = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is My App'),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      backgroundColor: color[ind],
      body: Center(
        child: Column(
          children:[
            SizedBox(height: 100,),
            // Text(quotes[ind]),
            // SizedBox(height: 100,),
            // Divider(),
            InkWell(
                child: Text("Change Color", 
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),
              onTap: (){
                  setState(() {
                    ind++;
                    ind = ind%color.length;
                  });
              },
            ),

          ],
        ),
      ),
    );
  }
}

```

![image](https://user-images.githubusercontent.com/53931644/127609876-83bfb3ec-4f3e-4e87-a86e-7a78f7d13353.png)

#### Change Color (Way - 2)

```dart
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List color = [Colors.grey, Colors.brown, Colors.redAccent, Colors.blueAccent, Colors.deepPurple, Colors.greenAccent];

  var ind = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is My App'),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      backgroundColor: color[ind],
      body: Center(
        child: Column(
          children:[
            SizedBox(height: 100,),
            // Text(quotes[ind]),
            // SizedBox(height: 100,),
            // Divider(),
            InkWell(
              child: ElevatedButton(
                onPressed: (){
                  setState(() {
                    ind++;
                    ind = ind % color.length;
                  });
                },
                child: Text("Change Color",
                style: TextStyle(
                  color: Colors.black,
                ),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}

```

#### Increment of the number on clicking + icon

```dart
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int index=0;

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
            onPressed: () {
              setState(() {
                index+=1;
              });
            },
            icon: Icon(
              Icons.add_box_outlined,
            ),
            label: Text("$index"),
          )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            index += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.deepOrange,
      ),
    );
  }
}

```
![image](https://user-images.githubusercontent.com/53931644/127597473-3d87cfab-fbe4-4bc9-bdb7-00efda738987.png)
