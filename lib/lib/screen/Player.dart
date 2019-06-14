import 'package:flutter/material.dart';
import 'package:appanimestrue/model/UltimosEpisodios.dart';
import 'package:video_player/video_player.dart';

class Player extends StatefulWidget {


  @override
  VideoState createState() => VideoState();


}


class VideoState extends State<Player> {



  VideoPlayerController playerController;
  VoidCallback listener;


  @override
  Widget build(BuildContext context) {


    return AspectRatio(
        aspectRatio: 15 / 15,
        child: Container(
          child: (playerController != null
              ? VideoPlayer(
            playerController,
          )
              : Container(color: Colors.black,)),
        )
    );
  }


  void createVideo() {


    if (playerController == null) {
      playerController = VideoPlayerController.network('')
        ..addListener(listener)
        ..setVolume(1.0)
        ..setLooping(true)
        ..initialize().then((_) { setState(() {});})
        ..play();
    } else {
      if (playerController.value.isPlaying) {
        playerController.pause();
      } else {
        playerController.initialize();
        playerController.play();
      }
    }
  }

  @override
  void deactivate() {
    playerController.setVolume(0.0);
    playerController.removeListener(listener);
    super.deactivate();
    playerController.dispose();
  }

  @override
  void dispose() {
    if (playerController != null) {
      playerController.removeListener(listener);
      super.dispose();
    }

  }

  @override
  void initState() {
    super.initState();
    listener = () {
      setState(() {});
    };

    createVideo();

  }
}