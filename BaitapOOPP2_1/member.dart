class Member {
  String _name;
  String _avatar;
  String _dateOfBirth;
  String _phoneNumber;
  String _email;
  bool _isMale;
  Member({
    required String name,
    required String avatar,
    required String dateOfBirth,
    required String phoneNumber,
    required String email,
    required bool isMale,
  })  : _name = name,
        _avatar = avatar,
        _dateOfBirth = dateOfBirth,
        _phoneNumber = phoneNumber,
        _email = email,
        _isMale = isMale;
  String get name => _name;
  String get avatar => _avatar;
  String get dateOfBirth => _dateOfBirth;
  String get phoneNumber => _phoneNumber;
  String get email => _email;
  bool get isMale => _isMale;
  //
}
