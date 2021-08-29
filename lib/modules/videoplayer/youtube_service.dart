import 'package:nlighten_domain/nlighten_domain.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeService {
  late YoutubePlayerController controller;

  YoutubeMetaData get metaData => controller.metadata;

  bool get isPlaying => controller.value.isPlaying;

  bool get isFullScreen => controller.value.isFullScreen;

  bool get isReady => controller.value.isReady;

  Duration get position => controller.value.position;

  YoutubeService(String videoId, {int startAt = 0}) {
    controller = YoutubePlayerController(
      initialVideoId: videoId,
      flags: YoutubePlayerFlags(
        autoPlay: true,
        enableCaption: false,
        startAt: startAt,
        // controlsVisibleAtStart: true,
      ),
    );
  }

  loadVideo(VideoModel video) {
    // controller.fitWidth(Size(180, 100));

    // controller.fitHeight(Size(180, 100));

    controller.load(video.id);

    // play after loading the new video
    this.play();
  }

  play() {
    controller.play();
  }

  pause() {
    controller.pause();
  }

  mute() {
    controller.mute();
  }

  dispose() {
    print("disposed youtube service");

    controller.dispose();
  }
}
