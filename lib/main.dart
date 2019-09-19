import 'package:flutter/material.dart';
import 'package:theme_example/page_a.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      /// MaterialApp é uma classe que pode receber ThemeData, que é um conjutnto
      /// de propriedades de cores e estilos que podem ser utilizados pelos
      /// material widgets do app
      title: 'Flutter Demo',
      theme: ThemeData(

        // Define as cores e brilho default do app.
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],

        // Define a font family default.
        fontFamily: 'Montserrat',

        // Define o TextTheme default. Use isso para especificar o estilo de texto
        // default para headlines, titles, corpos de texto, etc.
        textTheme: TextTheme(
          headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          body1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
      home: _MainPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class _MainPage extends StatefulWidget {
  _MainPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<_MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,

          /// Configurando o texto da app bar para o estilo padrão para titles,
          /// definido no ThemeData do Material App. Porém com o método 'copyWith',
          /// o tamanho da fonte é alterado para esse texto.
          style: Theme.of(context).textTheme.title.copyWith(fontSize: 20),
        ),
      ),
      body: PageA(),
    );
  }
}
