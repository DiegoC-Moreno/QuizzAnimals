import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import  'Cuestionario.dart';

Cuestionario cuestionario = new Cuestionario();

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Laboratorio 02 Diego Jose Cortes Moreno',
      home: Scaffold(
        backgroundColor: Colors.black,
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

  List<String> opciones = cuestionario.getOpciones();
  void verificarRespuesta(String respuestaUsuario){
    String respuestaCorrecta = cuestionario.getRespuesta();

    setState(() {

      if(cuestionario.esFinal() == true){
        Alert(
          context: context,
          title: 'Final!',
          desc: 'Llegaste al final de la prueba'
        ).show();
        cuestionario.resetar();
        valorPregunta = [];
        cantidad = 0;
      }else{
        if (respuestaCorrecta == respuestaUsuario){
          valorPregunta.add(Icon(Icons.check , color: Colors.green ));
          cantidad++;
        }else{
          valorPregunta.add(Icon(Icons.close , color: Colors.red ));
        }
      }
    });
  }

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
                  cuestionario.getPregunta(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.white
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
                color: Colors.white,
                child: Text(
                  opciones[opcion1],
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black
                  ),
                ),
                onPressed: () {
                  verificarRespuesta(opciones[opcion1]);

                  setState(() {
                    cuestionario.siguientePregunta();
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
                      // opcion1 = 0; 
                      // opcion2 = 1;
                      // opcion3 = 2;
                      // numeroPregunta = 0;
                    } else {
                      // opcion1 += 3;
                      // opcion2 += 3;
                      // opcion3 += 3;
                      // numeroPregunta++;
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
                  verificarRespuesta(opciones[opcion2]);
                  setState(() {
                    cuestionario.siguientePregunta();
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
                      // opcion1 = 0;
                      // opcion2 = 1;
                      // opcion3 = 2;
                      // numeroPregunta = 0;
                    } else {
                      // opcion1 += 3;
                      // opcion2 += 3;
                      // opcion3 += 3;
                      // numeroPregunta++;
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
                  verificarRespuesta(opciones[opcion3]);

                  setState(() {
                    cuestionario.siguientePregunta();
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
                      // msj_nota(cantidad);
                      // opcion1 = 0;
                      // opcion2 = 1;
                      // opcion3 = 2;
                      numeroPregunta = 0;
                    } else {
                      // opcion1 += 3;
                      // opcion2 += 3;
                      // opcion3 += 3;
                      // numeroPregunta++;
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



