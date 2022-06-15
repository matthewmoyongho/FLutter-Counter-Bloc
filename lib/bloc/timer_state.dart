import 'package:equatable/equatable.dart';

abstract class TimerState extends Equatable {
  final int duration;
  const TimerState(this.duration);
  List<Object> get props => [duration];
}

class TimerInitial extends TimerState {
  const TimerInitial(int duration) : super(duration);
  @override
  String toString() => 'TimerInitial {duration: $duration }';
}

class TimerRunPaused extends TimerState {
  const TimerRunPaused(int duration) : super(duration);
  @override
  String toString() => 'TimerRunPaused {duration: $duration}';
}

class TimerRunInProgress extends TimerState {
  const TimerRunInProgress(int duration) : super(duration);

  @override
  String toString() => 'TimerRunInProgress {duration: $duration}';
}

class TimerRunComplete extends TimerState {
  const TimerRunComplete() : super(0);
}
