// main.dart

import 'package:adf2021/News/profile.dart';
import 'package:adf2021/News/homePage.dart';
import 'package:adf2021/News/splashPage.dart';
import 'package:flutter/material.dart';

// main function represents main thread
// whatever we code in main, is executed by main thread
// that too in a sequence
void main() {
  // to execute the app created by us
  // MyApp -> Object
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context)=> SplashPage(),
        '/home': (context) => HomePage(),
        '/profile' : (context) => ProfilePage()
      },
      initialRoute: '/',
    );
  }
}

// SplashPage.dart

import 'package:flutter/material.dart';

// Generally Splash page contains app name, logo etc.

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  navigateToHome(BuildContext context){
    Future.delayed(
        Duration(seconds: 5),
            (){
          // Swiggy Bug => When on splash page, if user goes back and at sametime page routes to homepage, So instead of going back it will navigate on splash page
          // Navigator.pushNamed(context, '/home');   // Here homepage will come on top of splash page
          Navigator.pushReplacementNamed(context, '/home');   // Here homepage will replace the splash page
        }
    );
  }

  @override
  Widget build(BuildContext context) {

    navigateToHome(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("news.png"),
            SizedBox(height: 8,),
            Divider(),
            SizedBox(height: 4,),
            Text("Here comes the latest news for you!", style: TextStyle(color: Colors.orangeAccent, fontSize: 16),),
            SizedBox(height: 4,),
            // Text("Here comes the latest news for you!", style: TextStyle(color: Colors.blueGrey, fontSize: 12),)
          ],
        ),
      ),
    );
  }
}

// homepage.dart

import 'dart:convert' as convert;

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Future fetchNews(idx) async{
    List urls = [
      'https://newsapi.org/v2/top-headlines?country=in&apiKey=5bd64f76020741b5b9abd6114877a79a',
      'https://newsapi.org/v2/top-headlines?country=gb&apiKey=5bd64f76020741b5b9abd6114877a79a',
      'https://newsapi.org/v2/top-headlines?country=nz&apiKey=5bd64f76020741b5b9abd6114877a79a'
    ];
    var response = await http.get(Uri.parse(urls[idx]));
    return response.body;
  }
  parseNews(response){
    // response.forEach((element){
      
      var mapAsData = convert.jsonDecode(response);
      List articles = mapAsData['articles'];
      List<Widget> tileWidgets = [];
      
      articles.forEach((element) {
        tileWidgets.add(ListTile(
          onTap: (){

          },
          title: Column(
            children: [
              Text(element['title']),
              SizedBox(height: 10,),
              element['urlToImage'] != null ? Image.network(element['urlToImage']) : Container(),
              SizedBox(height: 10,),
            ],
          ),
          subtitle: Column(
            children: [
              Text(element['publishedAt']),
              SizedBox(height: 10,),
              element['description'] != null ? Text(element['description']) : Container(),
            ],
          ),
        ));
        tileWidgets.add(Divider());
      });
    // });
    return ListView(
      padding: EdgeInsets.all(10),
      children: tileWidgets,
    );
  }

  var index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NEWS Book"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.pushReplacementNamed(context, '/home');
            },
            icon: Icon(Icons.home),
            tooltip: 'Home Page',
          ),
          IconButton(
              onPressed: (){
                Navigator.pushReplacementNamed(context, '/profile');
              },
              icon: Icon(Icons.account_box),
              tooltip: "Shopping Cart",
          ),
        ],
        backgroundColor: Colors.orange,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("india.png"),
                    ),
                ),
              ),
            label: "India",
          ),

          BottomNavigationBarItem(
            icon: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("united-kingdom.png"),
                ),
              ),
            ),
            label: "United Kingdom",
          ),

          BottomNavigationBarItem(
            icon: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("new-zealand.png"),
                  )
              ),
            ),
            label: "New Zealand",
          )
        ],
        onTap: (idx){
          setState(() {
            index = idx;
          });
        },
        currentIndex: index,
        selectedFontSize: 16,
        selectedItemColor: Colors.orange,

      ),
      body: FutureBuilder(
        future: fetchNews(index),
        builder: (context, snapshot){
          if(snapshot.hasData){
            return parseNews(snapshot.data.toString());
          }else{
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
