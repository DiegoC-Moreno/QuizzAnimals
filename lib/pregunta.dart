class Pregunta{
  String textoPregunta;
  String textoRespuesta;
  List<String> opciones;

  Pregunta({String p,String r, List<String> op}){
    textoPregunta = p;
    textoRespuesta = r;
    opciones = op;
  }
}