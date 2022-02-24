import 'dart:html';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;
  List quotes = [
    "I could build a castle out of all the bricks they threw at me",
    "I never needed anything more.",
    "It's my birthday. I'ma do what I like.",
    "I'm dancing on my own. I make the moves up as I go.",
    "Sunshine mixed with a little hurricane.",
    "If I was you, I'd wanna be me too.",
    "Didn't they tell you that I was a savage.",
    "I'm no beauty queen, I'm just beautiful me.",
    "I'm a savage, classy, bougie, ratchet.",
    "I'm gonna live like tomorrow doesn't exist.",
    "Life imitates art.",
    "Darling I'm a nightmare dressed like a daydream.",
    "I see it. I like it. I want it. I got it.",
    "I wanna savor, save it for later",
    "I promise that you'll never find another like me.",
    "You're stuck in my head and I can't get you out of it.",
    "Find me where the wild things are.",
    "Don't let 'em say you ain't beautiful.",
    "It seems like blessings keep falling in my lap.",
    "All I do is win, win, win no matter what.",
    "You could be the king but watch the queen conquer.",
    "I'm in my own lane, you ain't in my category.",
    "So hey, let's be friends I'm dying to see how this one ends.",
    "I don't care about anyone not liking me. You bitches barely like yourselves.",
    "You better realize your worth and stop settling for bare minimum half-ass shit.",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        
        // width : MediaQuery.of(context).size.width,
        // height :MediaQuery.of(context).size.height,
        child: Material(
          elevation: 10.0,
          child: Container(
            width: 350,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 1.0), //(x,y)
                  blurRadius: 6.0,
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding:EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(quotes[_index % quotes.length]),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 18.0),
                  child: FlatButton.icon(
                    onPressed: _showQuote,
                    icon: Icon(Icons.wb_sunny),
                    label: Text('Humor me!'),
                    color: Colors.blue,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showQuote() {
    setState(() {
      _index += 1;
    });
  }
}
