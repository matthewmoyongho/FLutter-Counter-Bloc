import 'package:equatable/equatable.dart';

abstract class TimerEvent extends Equatable {
  const TimerEvent();

  List<Object> get props => [];
}

class TimerStarted extends TimerEvent {
  const TimerStarted(this.duration);
  final int duration;
}

class TimerPaused extends TimerEvent {
  const TimerPaused();
}

class TimerResumed extends TimerEvent {
  const TimerResumed();
}

class TimerReset extends TimerEvent {
  const TimerReset();
}

class TimerTicked extends TimerEvent {
  const TimerTicked(this.duration);
  final int duration;

  List<Object> get props => [duration];
}
