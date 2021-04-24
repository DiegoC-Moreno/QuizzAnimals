import 'pregunta.dart';

class Cuestionario{
   int numeroPregunta = 0;
  List<Pregunta> Preguntas =
  [
    Pregunta(p:'Cual es el resultado de la \n siguiente operacion \n 12 + 32 (24 / 6)?', r: '140',
        op: ['130','140','135']),
    Pregunta(p:'Que es un numero imaginario?', r: 'Son numeros Complejos',op: ['Son numeros Complejos',
      'Es un numero finito','Son numeros que estan fuera de los limites'] ),
    Pregunta(p:'Cuanto  da el resultado de la siguiente operacion \n 4 (12 - 25 / 5)',r: '28' ,op: ['28',
      '30','42']),
    Pregunta(p:'Qué esun triángulo isósceles?',r:'Es un triangulo que tiene dos lados de igual longuitud' ,
        op: ['Es aquel triangulo que tiene diferente tamaño sus lados','Es aquel triangulo que tiene igual el tamaño sus lados',
          'Es un triangulo que tiene dos lados de igual longuitud']),
    Pregunta(p: 'Cual es el resultado de la siguiente operacion \n 45 - 30 (273 / 3)?',r: '1365' ,op: ['1535',
      '1365','1755']),
    Pregunta(p: 'año de Lanzamiento de Flutter',r:'2017',op:['2015','2016','2017']),
    Pregunta(p: 'año de lanzamiento de linux',r: '1991', op: ['1990','1991','1994']),
    Pregunta(p: 'de que esta compuesta el agua', r: 'dos atomos de hidrogreno y una de oxigeno',
        op: ['tres de oxigeno','dos atomos de hidrogreno y una de oxigeno','Con una de nitrogeno y una de Cloro',]),
    Pregunta(p: 'de que esta compuesto el Carbonato de Sodio',r:'De dos de Sodio, una de carbono y tres Oxigeno',
        op:['De dos de Sodio, una de carbono y tres Oxigeno','de una de calcio, una de carbono y y tres Oxigeno',
          'Una de hiero, una de carbono y tres Oxigeno']),
  ];

  String getPregunta(){
      return Preguntas[numeroPregunta].textoPregunta;
  }

  String getRespuesta(){
    return Preguntas[numeroPregunta].textoRespuesta;
  }

  List<String> getOpciones(){
    return Preguntas[numeroPregunta].opciones;
  }

  void siguientePregunta(){
    if(numeroPregunta < Preguntas.length - 1){
      numeroPregunta++;
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
   }
}