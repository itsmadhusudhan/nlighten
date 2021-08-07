import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nlighten/modules/videoplayer/youtube_service.dart';

part 'video_controller_event.dart';
part 'video_controller_state.dart';
part 'video_controller_bloc.freezed.dart';

@injectable
class VideoControllerBloc
    extends Bloc<VideoControllerEvent, VideoControllerState> {
  VideoControllerBloc(@factoryParam YoutubeService? service)
      : super(VideoControllerState.initial(service!));

  @override
  Stream<VideoControllerState> mapEventToState(
    VideoControllerEvent event,
  ) async* {}
}
