import 'package:flutter/material.dart';
import 'quotes.dart';
import 'quote_card.dart';

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
  List<Quote> quotes = [
    Quote(text: "never fall in love with anyone. never fall in love with anyone", author: "shamsul haq "),
    Quote(text: "never fall in love with self. never fall in love with anyone", author: "shamsul haq"),
    Quote(text: "never fall in love with country. never fall in love with anyone", author: "shamsul haq")
  ];


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
        children: quotes.map((quote) => CardWidget(
          quote: quote,
          delete: (){
            setState(() {
              quotes.remove(quote);
            });
          },
        )).toList(),
      ),
    );
  }
}


