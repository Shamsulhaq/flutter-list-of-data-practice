import 'package:flutter/material.dart';
import 'quates.dart';
void main() => runApp(MaterialApp(
  home:Home(),
  debugShowCheckedModeBanner: false,
));


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Quate> quotes = [
    Quate(text: "never fall in love with anyone. never fall in love with anyone", author: "shamsul haq "),
    Quate(text: "never fall in love with self. never fall in love with anyone", author: "shamsul haq"),
    Quate(text: "never fall in love with self. never fall in love with anyone", author: "shamsul haq"),
    Quate(text: "never fall in love with self. never fall in love with anyone", author: "shamsul haq"),
    Quate(text: "never fall in love with self. never fall in love with anyone", author: "shamsul haq"),
    Quate(text: "never fall in love with country. never fall in love with anyone", author: "shamsul haq")
  ];

  Widget quateTemplate(quote){
    return Card(
      margin: EdgeInsets.fromLTRB(16.0,16.0,16.0,0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 16.0
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              quote.author,
              style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16.0
              ),
            ),
          ],
        ),
      ),

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("List of Items"),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
      ),
      body: Column(
        children: quotes.map((quote) => quateTemplate(quote)).toList(),
      ),
    );
  }
}
