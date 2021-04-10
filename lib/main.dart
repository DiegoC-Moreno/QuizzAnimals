import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Laboratorio 01 Diego Jose Cortes Moreno',
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Laboratorio(),
          )
        ),
      ),
    );
  }
}

class Laboratorio extends StatefulWidget {
  @override
  _LaboratorioState createState() => _LaboratorioState();
}

class _LaboratorioState extends State<Laboratorio> {

   void msj_nota (int nota) {
     if(nota >= 0 && nota <= 2) {
       showDialog(
           context: context,
           builder: (context) => AlertDialog(
             title: Text('nota'),
             content: Text('obtuvo una nota de $nota necesita mejorar'),
             actions: <Widget>[
               FlatButton(
                 child: Text('Ok'),
                 onPressed: (){},
               )
             ],
           ));
     } else if(nota >= 3 && nota <= 5) {
       showDialog(
         context: context,
         builder: (context) => AlertDialog(
             title: Text('nota'),
             content: Text('obtuvo una nota de $nota no es buena nota , necesita mejorar'),
             actions: <Widget>[
         FlatButton(
         child: Text('Ok'),
         onPressed: (){},
       )
     ],
     ));
     }else if(nota >= 6 && nota <= 8) {
       showDialog(
           context: context,
           builder: (context) => AlertDialog(
             title: Text('nota'),
             content: Text('obtuvo una nota de $nota muy buena nota'),
             actions: <Widget>[
               FlatButton(
                 child: Text('Ok'),
                 onPressed: (){},
               )
             ],
           ));
     }else if(nota >= 9 ) {
       showDialog(
           context: context,
           builder: (context) => AlertDialog(
             title: Text('nota'),
             content: Text('obtuvo una nota de $nota Excelente nota Felicidades'),
             actions: <Widget>[
               FlatButton(
                 child: Text('Ok'),
                 onPressed: (){},
               )
             ],
           ));
     }

   }
    List<Icon> valorPregunta = [];
    int numeroPregunta = 0,
        cantidad = 0,
        opcion1 = 0,
        opcion2 = 1,
        opcion3 = 2;
    List<String> Preguntas =
    ['Cual es el resultado de la \n siguiente operacion \n 12 + 32 (24 / 6)?',
      'Que es un numero imaginario?',
      'Cuanto  da el resultado de la siguiente operacion \n 4 (12 - 25 / 5)',
      'Qué esun triángulo isósceles?',
      'Cual es el resultado de la siguiente operacion \n 45 - 30 (273 / 3)?',
      'año de Lanzamiento de Flutter',
      'año de lanzamiento de linux',
      'de que esta compuesta el agua',
      'de que esta compuesto el Carbonato de Sodio', 'Fin'];
    List<String> opciones = [
      '130',
      '140',
      '135',
      'Son numeros Complejos',
      'Es un numero finito',
      'Son numeros que estan fuera de los limites'
      ,
      '28',
      '30',
      '42',
      'Es aquel triangulo que tiene diferente tamaño sus lados',
      'Es aquel triangulo que tiene igual el tamaño sus lados',
      'Es un triangulo que tiene dos lados de igual longuitud',
      '1535',
      '1365',
      '1755',
      '2015',
      '2016',
      '2017',
      '1990',
      '1991',
      '1994',
      'tres de oxigeno',
      'dos atomos de hidrogreno y una de oxigeno',
      'Con una de nitrogeno y una de Cloro',
      'De dos de Sodio, una de carbono y tres Oxigeno',
      'de una de calcio, una de carbono y y tres Oxigeno',
      'Una de hiero, una de carbono y tres Oxigeno',
      ' - ',
      ' - ',
      ' - '
    ];

    List<String> respuestas = [
      '140',
      'Son numeros Complejos',
      '28',
      'Es un triangulo que tiene dos lados de igual longuitud',
      '1365',
      '2017',
      '1991',
      'dos atomos de hidrogreno y una de oxigeno',
      'De dos de Sodio, una de carbono y tres Oxigeno'
    ];


    @override
    Widget build(BuildContext context) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Center(
                child: Text(
                  Preguntas[numeroPregunta],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.black
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: FlatButton(
                textColor: Colors.black,
                color: Colors.blueAccent,
                child: Text(
                  opciones[opcion1],
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black
                  ),
                ),
                onPressed: () {
                  if (respuestas[numeroPregunta] == opciones[opcion1]) {
                    valorPregunta.add(Icon(Icons.check, color: Colors.green));
                    //final player = AudioPlayer();
                    //player.play('note1.wav');
                    cantidad++;
                  } else {
                    valorPregunta.add(Icon(Icons.close, color: Colors.red));
                  }

                  setState(() {
                    if (valorPregunta.length == 9) {
                      // showDialog(
                      //     context: context,
                      //     builder: (context) => AlertDialog(
                      //       title: Text('nota'),
                      //       content: Text('obtuvo una nota de $cantidad / 9'),
                      //       actions: <Widget>[
                      //         FlatButton(
                      //           child: Text('Ok'),
                      //           onPressed: (){},
                      //         )
                      //       ],
                      //     ));
                      msj_nota(cantidad);
                      opcion1 = 0;
                      opcion2 = 1;
                      opcion3 = 2;
                      numeroPregunta = 0;
                    } else {
                      opcion1 += 3;
                      opcion2 += 3;
                      opcion3 += 3;
                      numeroPregunta++;
                    }
                  });
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: FlatButton(
                textColor: Colors.black,
                color: Colors.red,
                child: Text(
                  opciones[opcion2],
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black
                  ),
                ),
                onPressed: () {
                  if (respuestas[numeroPregunta] == opciones[opcion2]) {
                    valorPregunta.add(Icon(Icons.check, color: Colors.green));
                    //final player = AudioPlayer();
                    //player.play('note1.wav');
                    cantidad++;
                  } else {
                    valorPregunta.add(Icon(Icons.close, color: Colors.red));
                  }
                  setState(() {
                    if (valorPregunta.length == 9) {
                      // showDialog(
                      // context: context,
                      // builder: (context) => AlertDialog(
                      //   title: Text('nota'),
                      //   content: Text('obtuvo una nota de $cantidad / 9'),
                      //   actions: <Widget>[
                      //     FlatButton(
                      //       child: Text('Ok'),
                      //         onPressed: (){},
                      //     )
                      //   ],
                      // ));
                      msj_nota(cantidad);
                      opcion1 = 0;
                      opcion2 = 1;
                      opcion3 = 2;
                      numeroPregunta = 0;
                    } else {
                      opcion1 += 3;
                      opcion2 += 3;
                      opcion3 += 3;
                      numeroPregunta++;
                    }
                  });
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: FlatButton(
                textColor: Colors.black,
                color: Colors.orange,
                child: Text(
                  opciones[opcion3],
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black
                  ),
                ),
                onPressed: () {
                  if (respuestas[numeroPregunta] == opciones[opcion3]) {
                    valorPregunta.add(Icon(Icons.check, color: Colors.green));
                    //final player = AudioPlayer();
                    //player.play('note1.wav');
                    cantidad++;
                  } else {
                    valorPregunta.add(Icon(Icons.close, color: Colors.red));
                  }

                  setState(() {
                    if (valorPregunta.length == 9) {
                      // showDialog(
                      //     context: context,
                      //     builder: (context) =>
                      //         AlertDialog(
                      //           title: Text('nota'),
                      //           content: Text('obtuvo una nota de $cantidad / 9'),
                      //           actions: <Widget>[
                      //             FlatButton(
                      //               child: Text('Ok'),
                      //               onPressed: () {},
                      //             )
                      //           ],
                      //         ));
                      msj_nota(cantidad);
                      opcion1 = 0;
                      opcion2 = 1;
                      opcion3 = 2;
                      numeroPregunta = 0;
                    } else {
                      opcion1 += 3;
                      opcion2 += 3;
                      opcion3 += 3;
                      numeroPregunta++;
                    }
                  });
                },
              ),
            ),
          ),

          Row(
            children: valorPregunta,
          )
        ],
      );
    }
  }



