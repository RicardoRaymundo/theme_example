import 'package:flutter/material.dart';
import 'package:theme_example/page/page_home.dart';
import 'package:theme_example/theme/theme_config.dart';
import 'package:theme_example/theme/theme_select.dart';

void main() {
  runApp(
    /// Envolvendo o Main em um StatefulWidget, que é filho de um InheritedWidget
    ThemeConfig(
      /// Tema inicial
      initialTheme: ThemeAspect.LIGHT,
      child: Main(),
    ),
  );
}

///
class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

///
class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Theme selector example',
      theme: ThemeConfig.of(context),
      debugShowCheckedModeBanner: false,

      /// Recupera o tema default e configura o tema da aplicação
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,

          /// Recupera uma cor do tema da aplicação
          title: Text(
            'Main Page',

            /// Configurando o texto da app bar para o estilo padrão para titles,
            /// definido no ThemeData do Material App. Porém com o método 'copyWith',
            /// o tamanho da fonte é alterado para esse texto.
            style: Theme.of(context).textTheme.title.copyWith(fontSize: 20),
          ),
        ),
        body: PageHome(),
      ),
    );
  }
}
