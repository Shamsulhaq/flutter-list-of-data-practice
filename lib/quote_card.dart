import 'package:flutter/material.dart';
import 'quotes.dart';

class CardWidget extends StatelessWidget {

  final Quote quote;
  final Function()? delete;
  CardWidget({ required this.quote,this.delete});


  @override
  Widget build(BuildContext context) {
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
            SizedBox(height: 8.0,),
            TextButton.icon(
              onPressed:delete,
              icon: Icon(Icons.delete),
              label: Text("delete"),
            )
          ],
        ),
      ),

    );
  }
}