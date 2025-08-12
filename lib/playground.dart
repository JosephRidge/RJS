/**
 * Cars: 
 * - color
 * - shape 
 * - brand
 * - size
 */

// blueprint ot manufacture cars
class Car {
  // attributes of my car
  final String color;
  final String shape;
  final String brand;
  final double size;

  // constructor

  Car(this.color, this.brand, this.shape, this.size);
}

void main() {
  List<Car> cars = [
    Car("blue", "oval","blueOval", 2),
    Car("green", "oval","greenOval", 4),
    Car("yellow", "oval","yellowOval", 12),
    Car("black", "oval","blackOval", 20),
    Car("amber", "oval","amberOval", 21),
    Car("red", "oval","redOval", 22),
  ];


  
}
