import 'package:flutter/material.dart';
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
        aspectRatio: 16 / 9,
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
      playerController = VideoPlayerController.network(
          "https://r6---sn-p5qs7ner.googlevideo.com/videoplayback?id=6efc783117b0fcc0&itag=18&source=blogger&mm=31&mn=sn-p5qs7ner&ms=au&mv=m&pl=48&ei=6wP3XLXDKYmarAXkv7CYBA&susc=bl&mime=video/mp4&dur=1434.157&lmt=1559645905499210&mt=1559692173&ip=2607:5300:61:f51::&ipbits=0&expire=1559721067&sparams=ip,ipbits,expire,id,itag,source,mm,mn,ms,mv,pl,ei,susc,mime,dur,lmt&signature=BBB450AFA2F24A1E105AC91B05EC6203F6330A4ABB392B10CC0A81979FC8F867.95BD020CC907FBF1E71CF580156E18755C3894E69812EDB8664177E3EBD7DD58&key=us0")
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
