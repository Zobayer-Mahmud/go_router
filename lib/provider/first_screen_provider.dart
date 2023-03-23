import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class FirstScreenProvider with ChangeNotifier {
  VideoPlayerController videoPlayerController =
      VideoPlayerController.network("");
}
