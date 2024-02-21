class Student {
  String _studentName;
  Student(this._studentName);
  String get studentName => _studentName;
  set studentName(String value) {
    _studentName = value;
  }

  @override
  operator ==(Object other) {
    return identical(this, other) ||
        other is Student &&
            runtimeType == other.runtimeType &&
            _studentName == other._studentName;
  }

  @override
  String toString() {
    return "$studentName";
  }
}
