import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:theme_example/page_b.dart';

class PageA extends StatefulWidget {
  @override
  _PageAState createState() => _PageAState();
}

class _PageAState extends State<PageA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Theme.of(context).accentColor,
              child: Text(
                'Text with a background color, from Page A',
                style: Theme.of(context).textTheme.title,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              color: Theme.of(context).accentColor,
              child: Text(
                'Text with diferent font family',
                style: Theme.of(context)
                    .textTheme
                    .title
                    .copyWith(fontFamily: 'Pacifico'),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Theme(
        data: Theme.of(context).copyWith(
          colorScheme:
              Theme.of(context).colorScheme.copyWith(secondary: Colors.yellow),
        ),
        child: FloatingActionButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => PageB()));
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
