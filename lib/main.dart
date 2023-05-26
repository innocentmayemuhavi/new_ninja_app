import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: Home(),
    ));

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _level = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        leading: const IconButton(
          onPressed: null,
          icon: Icon(Icons.home),
          tooltip: 'Menu',
          color: Colors.blue,
        ),
        title: const Text('Ninja App'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,
        actions: const <Widget>[
          IconButton(
            onPressed: null,
            icon: Icon(Icons.search),
            color: Colors.blue,
            tooltip: 'Search',
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Center(
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/img.jpg"),
                      radius: 40.0,
                    ),
                  ),
                  const SizedBox(
                    height: 90.0,
                  ),
                  const Text(
                    'Name',
                    style: TextStyle(
                      color: Colors.grey,
                      letterSpacing: 2.0,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                    'Maye Innocent',
                    style: TextStyle(
                      color: Colors.amberAccent,
                      letterSpacing: 2.0,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  const Text(
                    'Current Level',
                    style: TextStyle(
                      color: Colors.grey,
                      letterSpacing: 2.0,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    '$_level',
                    style: const TextStyle(
                      color: Colors.amberAccent,
                      letterSpacing: 2.0,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  const Row(
                    children: <Widget>[
                      Icon(
                        Icons.email,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 11.0,
                      ),
                      Text(
                        'innocentmuhavimaye@gmail.com',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18.0,
                        ),
                      )
                    ],
                  ),
                ]),
          ),
          // This trailing comma makes auto-formatting nicer for build methods.
        ],
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Increment',
        backgroundColor: Colors.black87,
        onPressed: () {
          setState(() {
            _level++;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
