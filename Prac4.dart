void main() {
  num yourNum = 10;
  print("Add 2 to yourNum: ${yourNum.add(1)}");
  print("Subtract 9 to yourNum: ${yourNum.subtract(9)}");
  print("Multiple yourNum by 3: ${yourNum.multiple(3)}");
  print("Divide yourNum into 5: ${yourNum.divide(2)}");
}

extension numExt on num {
  add(num other) {
    if (other <= 0) {
      throw FormatException("Number must be larger than 0");
    } else {
      return this + other;
    }
  }

  subtract(num other) {
    if (other <= 0) {
      throw FormatException("Number must be larger than 0");
    } else {
      return this - other;
    }
  }

  multiple(num other) {
    if (other <= 0) {
      throw FormatException("Number must be larger than 0");
    } else {
      return this * other;
    }
  }

  divide(num other) {
    if (other <= 0) {
      throw FormatException("Number must be larger than 0");
    } else {
      return this / other;
    }
  }
}
