part of 'video_controller_bloc.dart';

@freezed
class VideoControllerEvent with _$VideoControllerEvent {
  const factory VideoControllerEvent.started() = _Started;
}