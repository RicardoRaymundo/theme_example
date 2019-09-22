import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:theme_example/page/page_b.dart';
import 'package:theme_example/page/page_select_theme.dart';

class PageHome extends StatefulWidget {
  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(

              /// Acessando a propriedade 'accentColor' do MaterialApp
              color: Theme.of(context).accentColor,
              child: Text(
                'Text with a background color, from Page A',

                /// Acessando a propriedade 'textTheme.title' do MaterialApp
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

                /// Acessando a propriedade 'textTheme.title' do MaterialApp,
                /// porém, alterando a 'fontFamily' desse texto.
                style: Theme.of(context)
                    .textTheme
                    .title
                    .copyWith(fontFamily: 'Pacifico'),
              ),
            ),
          ],
        ),
      ),

      /// Criando um tema único para o floatingActionButton
      floatingActionButton: Theme(

        /// Copiando o ThemeData do contexto, porem alterando o esquema de cores.
        data: Theme.of(context).copyWith(
          colorScheme:
              Theme.of(context).colorScheme.copyWith(secondary: Colors.yellow),
        ),
        child: FloatingActionButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => PageSelectTheme()));
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
