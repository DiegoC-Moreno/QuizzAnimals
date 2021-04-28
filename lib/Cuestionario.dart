import 'package:flutter/cupertino.dart';

import 'pregunta.dart';

class Cuestionario{
   int numeroPregunta = 0,
       opcion1 = 0,
       opcion2 = 1,
       opcion3 = 2;
   int opcion4 = 3;
  List<Pregunta> Preguntas =
  [
    Pregunta(p:'¿Cuál es el animal más venenoso del mundo? ', r: 'asset/Medusas-de-mar.png'),
    Pregunta(p:'Su corazón pesa más de 11 kg', r: 'asset/jirafa.jpg'),
    Pregunta(p:'Pueden usar su cola para comunicarse entre ellos',r: 'asset/zorro.jpg'),
    Pregunta(p:'¿Qué animal tiene 47 dientes?',r:'asset/mosquito.jpg'),
    Pregunta(p: '¿Cuál de estas especies no puede caminar?',r: 'asset/libelula.jpeg'),
  ];


  List<String> opcionesImg = ['asset/Medusas-de-mar.png','asset/alacran.jpg','asset/serpiente-cascabel.jpg',
    'asset/spider-sidney.jpg','asset/jaguar.jpg', 'asset/jirafa.jpg','asset/jabali.jpg','asset/leon.jpg','asset/elefante.jpg',
    'asset/zorro.jpg', 'asset/lemur.jpg', 'asset/camaleon.jpg', 'asset/mosquito.jpg','asset/nutria.jpg','asset/leon.jpg',
    'asset/tiburon.jpg', 'asset/mosca.jpg','asset/mosquito.jpg','asset/libelula.jpeg','asset/abeja.jpg'];


  String getPregunta(){
      return Preguntas[numeroPregunta].textoPregunta;
  }

  String getRespuesta(){
    return Preguntas[numeroPregunta].textoRespuesta;
  }

  void siguientePregunta(){
    if(numeroPregunta < Preguntas.length - 1){
      numeroPregunta++;
      opcion1 += 4;
      opcion2 += 4;
      opcion3 += 4;
      opcion4 += 4;
    }
  }

   bool esFinal(){
     if(numeroPregunta >= Preguntas.length - 1 ){
       return true;
     }else{
       return false;
     }
   }

   void resetar(){
     numeroPregunta = 0;
     opcion1 = 0;
     opcion2 = 1;
     opcion3 = 2;
     opcion4 = 3;
   }
}