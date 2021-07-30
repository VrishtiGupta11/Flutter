### StateFull Widget
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
