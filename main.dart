import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main()=>runApp(myApp());

class myApp extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My First Application',
      
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          centerTitle: true,
          title: Text('Random Word Generator'),
        ),

        body: Center(
          child: RandomWords(),
          )
      ),
    );
  }
}

class RandomWordState extends State<RandomWords>{
  final suggestions=<WordPair>[];
  final bigFont=18.0;

  @override
  Widget build(BuildContext context) {
    
    final wordpair=WordPair.random();
    return Text(wordpair.asPascalCase);
  }

  Widget buildSuggestion(){
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context,i){
        if(i.isOdd) return Divider();

        final index=1-/2;

        if(index>=suggestions.length) 
      }

    )
  }
}

class RandomWords extends StatefulWidget{
  @override
  RandomWordState createState()=>new RandomWordState();
}