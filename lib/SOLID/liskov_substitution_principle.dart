/*
A<-B
If class B is a subtype of class A, then we should be able
to replace object of class A with class B without breaking
the behaviour of the program. 

Bad Code: 
abstract class Vechile {
  void move();
  void refuel();
}

class PetrolCar implements Vechile {
  @override
  void move() {
    print("Move the Petrol car");
  }

  @override
  void refuel() {
    print("Take fuel for the petrol car");
  }
}

class ElectricCar implements Vechile {
  @override
  void move() {
    print("Move the electric car");
  }

  @override
  void refuel() {
    /// But electric car has not the fuel system, so this is unused
    /// function
    throw "No fuel system available";
  }
}

class CarService {
  void getCarService(Vechile vechile) {
    vechile.move();
    vechile.refuel();
  }
}

void main() {
  ElectricCar electricCar = ElectricCar();
  CarService carService = CarService();
  PetrolCar petrolCar = PetrolCar();
  carService.getCarService(electricCar);
  carService.getCarService(petrolCar);
}
*/

abstract class Vechile {
  void move();
}

abstract class ElectricVechile extends Vechile {
  void recharge();
}

abstract class PetrolVechile extends Vechile {
  void refuel();
}

class PetrolCar implements PetrolVechile {
  @override
  void move() {
    print("Move the Petrol car");
  }

  @override
  void refuel() {
    print("Take fuel for the petrol car");
  }
}

class ElectricCar implements ElectricVechile {
  @override
  void move() {
    print("Move the electric car");
  }

  @override
  void recharge() {
    print("Recharge the car");
  }
}

class CarService {
  void getElectricCarService(ElectricVechile vechile) {
    vechile.move();
    vechile.recharge();
  }

  void getPetrolCarService(PetrolVechile vechile) {
    vechile.move();
    vechile.refuel();
  }
}

void main() {
  ElectricCar electricCar = ElectricCar();
  CarService carService = CarService();
  PetrolCar petrolCar = PetrolCar();
  carService.getElectricCarService(electricCar);
  carService.getPetrolCarService(petrolCar);
}
