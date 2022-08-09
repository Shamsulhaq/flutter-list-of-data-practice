import 'package:flutter/material.dart';
import 'quates.dart';

class CardWidget extends StatelessWidget {

  final Quate quate;
  CardWidget({ required this.quate });

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
              quate.text,
              style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 16.0
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              quate.author,
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
}