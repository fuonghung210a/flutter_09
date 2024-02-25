import 'dart:async';
import 'dart:io';

class TimerPeriodic {
  final int _seconds;
  final Function(int) _callBack;

  late Timer _timer;
  TimerPeriodic({required int seconds, required Function(int) callBack})
      : _callBack = callBack,
        _seconds = seconds {
    // start();
  }
  void start() {
    _timer = Timer.periodic(Duration(seconds: _seconds), (timer) {
      _callBack(timer.tick);
    });
  }
}

void main() {
  dynamic timer = TimerPeriodic(
    seconds: 1,
    callBack: (seconds) {
      print('Đã trôi qua $seconds giây');
      sleep(Duration(seconds: 4));
    },
  );
  timer.start();
}
