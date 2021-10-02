import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new MyCardElevator(),
    );
  }
}


class MyCardElevator extends StatelessWidget {
  const MyCardElevator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.teal,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Recipes"),
        ),
        body: Column(
          children: <Widget>[
            Card(
              elevation: 30,
              child: ListTile(
                title: Text("Biryani"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Biryani()));
                },
              ),
            ),

            Card(
              elevation: 30,
              child: ListTile(
                title: Text("Noodles"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Noodles()));
                },
              ),
            ),

            Card(
              elevation: 30,
              child: ListTile(
                title: Text("Plain Rice"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>PlainRice()));
                },
              ),
            ),

            Card(
              elevation: 30,
              child: ListTile(
                title: Text("Juices"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Juices()));
                },
              ),
            ),


          ],
        ),
      ),
    );
  }
}

class Biryani extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Delicious Biryani"),
          leading: IconButton(
            icon: new Icon(Icons.arrow_back_ios),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyCardElevator()));
            },
          ),
        ),
        body: Center(
          child: Text("Welcome To My Delecious Birayni"),
        ),
      ),
    );
  }
}


class PlainRice extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Delicious Biryani"),
          leading: IconButton(
            icon: new Icon(Icons.arrow_back_ios),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyCardElevator()));
            },
          ),
        ),
        body: Center(
          child: Text("Welcome To My PLain Rice"),
        ),
      ),
    );
  }
}


class Noodles extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Delicious Biryani"),
          leading: IconButton(
            icon: new Icon(Icons.arrow_back_ios),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyCardElevator()));
            },
          ),
        ),
        body: Center(
          child: Text("Welcome And Taste My Delecious Noodles"),
        ),
      ),
    );
  }
}


class Juices extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Delicious Biryani"),
          leading: IconButton(
            icon: new Icon(Icons.arrow_back_ios),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyCardElevator()));
            },
          ),
        ),
        body: Center(
          child: Text("Welcome To My Juice Pages And Enjoy The Drink "),
        ),
      ),
    );
  }
}