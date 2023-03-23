import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class FirstScreenProvider with ChangeNotifier {

 List<String> videoList =[
  'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4',
  'https://media.istockphoto.com/id/1411685064/video/heavy-wind-moves-these-summertime-crops.mp4?s=mp4-640x640-is&k=20&c=sC9N6JIzt8J8eJMJ1oJgUmWH9xG0bJvlNozNEaDUQMY=',
 'https://cdn.pixabay.com/vimeo/528670485/Flowers%20-%2068367.mp4?width=1280&hash=8ed464af65c03747b48614713fa1f051e49cf2be',
 'https://cdn.pixabay.com/vimeo/770315514/Sea%20-%20138588.mp4?width=1280&hash=e6f46286f0c6f80a09bb243069e5dc7e46927cc7',
 
 ];
  VideoPlayerController videoPlayerController =
      VideoPlayerController.network("");
}
