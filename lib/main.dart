import 'package:flutter/material.dart';
import 'quotes.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
      Quote(author: 'author 1', text: 'text 1'),
      Quote(author: 'author 2', text: 'text 2'),
      Quote(author: 'author 3', text: 'text 3'),
  ];

  Widget quoteTemplate(quote){
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0,0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children : <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600]
              )
            ),
            SizedBox(height:6.0),
            Text(
                quote.author,
                style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey[600]
                )
            ),
          ]
        ),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body:
        Column(
          children: quotes.map((quote) => quoteTemplate(quote)).toList(),
        )
    );
  }
}
