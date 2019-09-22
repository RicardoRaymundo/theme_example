import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:theme_example/theme/theme_config.dart';
import 'package:theme_example/theme/theme_select.dart';

class PageB extends StatefulWidget {
  @override
  _PageBState createState() => _PageBState();
}

class _PageBState extends State<PageB> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Theme selector example',
      theme: ThemeConfig.instanceOf(context).chooseTheme(ThemeAspect.DARK),
      debugShowCheckedModeBanner: false,

      /// Recupera o tema default e configura o tema da aplicação
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                color: Theme.of(context).primaryColor,
                child: Text(
                  'Text with a background color, from Page B!',
                  style: Theme.of(context).textTheme.title.copyWith(color: Theme.of(context).accentColor),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                color: Theme.of(context).accentColor,
                child: Text(
                  'Text with diferent font family',
                  style: Theme.of(context).textTheme.title.copyWith(fontFamily: 'Pacifico'),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: Theme(
          data: Theme.of(context).copyWith(
            colorScheme: Theme.of(context).colorScheme.copyWith(secondary: Colors.yellow),
          ),
          child: FloatingActionButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
