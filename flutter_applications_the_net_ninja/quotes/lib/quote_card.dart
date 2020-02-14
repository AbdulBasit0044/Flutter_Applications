import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;
  final Function delete;
  QuoteCard({this.quote, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey[400],
              ),
            ),
            SizedBox(height: 6.0),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 20,
                color: Colors.green[400],
              ), 
            ),
            SizedBox(height: 8.0),
            FlatButton.icon(
              onPressed: delete, 
              icon: Icon(Icons.delete), 
              label: Text('delete quote'),
            )
          ],
          ),
      ),
    );
  }
}