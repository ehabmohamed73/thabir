import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class TeacherProfileController extends GetxController {
  String? videoId = YoutubePlayer.convertUrlToId(
      "https://youtu.be/434AGb_2iow?feature=shared");
  // Create a YouTube player controller
  late YoutubePlayerController controller;
  @override
  void onInit() {
    controller = YoutubePlayerController(
      initialVideoId: videoId!,
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
    super.onInit();
  }
}
