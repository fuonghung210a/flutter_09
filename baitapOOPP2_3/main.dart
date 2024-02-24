abstract class Vehicle {
  final String _vehicleType;
  String get vehicleType => _vehicleType;
  final int _manuYear;

  Vehicle({required String vehicleType, required int manuYear})
      : _vehicleType = vehicleType,
        _manuYear = manuYear;
  void startEngine() {
    print('Engine started!');
  }

  void stopEngine() {
    print('Engine stopped!');
  }

  void accelerate() {}
  void brake() {}
}

class Motobike extends Vehicle {
  final String _vehicleName;

  Motobike(this._vehicleName, {required int manuYear})
      : super(vehicleType: 'MotoBike', manuYear: 2000);

  @override
  void accelerate() {
    print('Speeding up!');
  }

  @override
  void brake() {
    print('Slowing down!');
  }
}

class Car extends Vehicle {
  String _vehicleName;
  Car(this._vehicleName, {required int manuYear})
      : super(vehicleType: 'Car', manuYear: 2000);
  @override
  void accelerate() {
    print('${_vehicleName} is speeding up!');
  }

  @override
  void brake() {
    print('${_vehicleName} is slowing down!');
  }
}

void main() {
  Motobike ex135 = Motobike('Exciter 135', manuYear: 2012);
  print(ex135._vehicleType);
  Car Vios = Car('Vios', manuYear: 2020);
  Vios.accelerate();
  Vios.brake();
  ex135.startEngine();
  ex135.stopEngine();
}
