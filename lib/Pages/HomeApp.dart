import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int Counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App Counter'),
      ),
      body: Center(
        child: Text(
          'ຈຳນວນ: ${Counter}',
          style: TextStyle(fontSize: 35),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                Counter++;
              });
            },
            child: Icon(Icons.add),
          ),
          const SizedBox(
            height: 10,
          ),
          // Padding(
          //   padding: const EdgeInsets.only(top: 10, bottom: 10),
          //   child:
          FloatingActionButton(
            onPressed: () {
              setState(() {
                Counter--;
              });
            },
            child: Icon(Icons.remove),
            // ),
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                Counter = 0;
              });
            },
            child: Icon(Icons.recycling),
          )
        ],
      ),
    );
  }
}
