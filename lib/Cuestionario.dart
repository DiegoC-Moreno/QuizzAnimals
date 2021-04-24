import 'pregunta.dart';

class Cuestionario{
   int numeroPregunta = 0,
       opcion1 = 0,
       opcion2 = 1,
       opcion3 = 2;
  List<Pregunta> Preguntas =
  [
    Pregunta(p:'Cual es el resultado de la \n siguiente operacion \n 12 + 32 (24 / 6)?', r: '140',
        ),
    Pregunta(p:'Que es un numero imaginario?', r: 'Son numeros Complejos'),
    Pregunta(p:'Cuanto  da el resultado de la siguiente operacion \n 4 (12 - 25 / 5)',r: '28'),
    Pregunta(p:'Qué esun triángulo isósceles?',r:'Es un triangulo que tiene dos lados de igual longuitud' ,
       ),
    Pregunta(p: 'Cual es el resultado de la siguiente operacion \n 45 - 30 (273 / 3)?',r: '1365' ,),
    Pregunta(p: 'año de Lanzamiento de Flutter',r:'2017'),
    Pregunta(p: 'año de lanzamiento de linux',r: '1991'),
    Pregunta(p: 'de que esta compuesta el agua', r: 'dos atomos de hidrogreno y una de oxigeno'),
    Pregunta(p: 'de que esta compuesto el Carbonato de Sodio',r:'De dos de Sodio, una de carbono y tres Oxigeno'),
  ];

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
   'Una de hiero, una de carbono y tres Oxigeno'
   ];

  String getPregunta(){
      return Preguntas[numeroPregunta].textoPregunta;
  }

  String getRespuesta(){
    return Preguntas[numeroPregunta].textoRespuesta;
  }

  void siguientePregunta(){
    if(numeroPregunta < Preguntas.length - 1){
      numeroPregunta++;
      opcion1 += 3;
      opcion2 += 3;
      opcion3 += 3;
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
   }
}