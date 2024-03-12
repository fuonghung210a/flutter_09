void main() {
  List<int> bills = [5, 5, 5, 10, 20, 20];

  int fiveDollars = 0;
  int tenDollars = 0;
  bool res = true;
  if (bills[0] == 10 || bills[0] == 20) {
    res = false;
  }
  for (int i = 0; i < bills.length; i++) {
    if (bills[i] == 5) {
      fiveDollars += 1;
    } else if (bills[i] == 10) {
      if (fiveDollars >= 1) {
        fiveDollars -= 1;
        tenDollars += 1;
      } else {
        res = false;
      }
    } else if (bills[i] == 20) {
      if (tenDollars >= 1 && fiveDollars >= 1) {
        tenDollars -= 1;
        fiveDollars -= 1;
      } else if (fiveDollars >= 3) {
        fiveDollars -= 3;
      } else {
        res = false;
      }
    }
  }
  print(res);
}
