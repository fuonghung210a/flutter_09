class Manufacturer {
  final int id;
  final String name;

  Manufacturer({required this.id, required this.name});
}

class Device {
  final Manufacturer manufacturer;
  final String deviceName;
  final String osName;
  final int deviceID;

  Device({
    required this.manufacturer,
    required this.deviceName,
    required this.osName,
    required this.deviceID,
  });
  void getDeviceInf() {
    print("$deviceName\t$deviceID\t$osName\t${manufacturer.name}");
  }
}

void main() {
  Manufacturer mnf = new Manufacturer(id: 1, name: "SamSung");
  Device iphone12 = new Device(
    manufacturer: mnf,
    deviceName: 'iphone12',
    osName: 'windows',
    deviceID: 1,
  );
  iphone12.getDeviceInf();
}
