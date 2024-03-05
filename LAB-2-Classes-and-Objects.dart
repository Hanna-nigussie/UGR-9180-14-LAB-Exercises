class Car {
  String brand;
  String model;
  int year;

  Car(this.brand, this.model, this.year);

  void vroom() {
    print('Vroom Vroom');
  }
}

void main() {
  Car myCar = Car('Toyota', 'Camry', 2020);
  myCar.vroom();
}
