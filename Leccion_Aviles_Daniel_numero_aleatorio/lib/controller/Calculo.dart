import 'dart:math';



//Algoritmo
class Calculo {

  //Generacion de numero aleatorio
  int generarNumero() {
    Random random = Random();
    //Generear numero del 0 al 40 + 10, numero minimo 10, maximo 50
    int _numero =(10 + random.nextInt(41));
    return _numero;
  }

  //Dismunicion porsentual del 15%
  double calcularDisminucion(int numero) {
    return numero - (numero * (0.15));
  }
}
