import 'package:flutter/material.dart';
import 'package:parts_of_speech_quiz/constants.dart';
import 'package:styled_text/styled_text.dart';
import 'package:video_player/video_player.dart';

class InterjectionPage extends StatefulWidget{
  @override
  _InterjectionState createState() => _InterjectionState();
}
class _InterjectionState extends State<InterjectionPage> {

  late VideoPlayerController controller;

  @override
  void initState() {
    loadVideoPlayer();
    super.initState();
  }

  loadVideoPlayer(){
    controller = VideoPlayerController.asset('assets/video/Interjections.mp4');
    controller.addListener(() {
      setState(() {});
    });
    controller.initialize().then((value){
      setState(() {});
    });

  }
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery
        .of(context)
        .size
        .height;
    final double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
        backgroundColor: mainBgColor,
        body: Column(

          children: [
            Container(
                height: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(0),
                      bottomLeft: Radius.circular(50),
                    ),
                    gradient: blueGradientCen,
                    boxShadow: [
                      new BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          offset: new Offset(-3.0, 3.0),
                          blurRadius: 2.0,
                          spreadRadius: 2.0)
                    ]
                ),
                child: Stack(
                    children: [
                      Positioned(
                          top: 0, left: 40,
                          child: Container(
                            height: 90,
                            width: 450,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(0),
                                  bottomLeft: Radius.circular(50),

                                )
                            ),
                          )
                      ),
                      Positioned(
                          bottom: 10,
                          left: 70,
                          child: Text("INTERJECTION", style:
                          TextStyle(fontSize: 80.0,
                              fontFamily: 'Dongle',
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurple))
                      ),

                    ]
                )
            ),
            SizedBox(height: height * 0.03,),
            Expanded(
                child: MediaQuery.removePadding(
                    context: context,
                    removeTop: true,
                    child: ListView(
                      children: [
                        Container(
                            margin: const EdgeInsets.only(bottom: 10, top: 10),
                            height: 390,
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, bottom: 20),
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(color: Colors.blueGrey
                                          .withOpacity(0.4),
                                          spreadRadius: 4,
                                          blurRadius: 7),
                                    ]),
                                padding: const EdgeInsets.only(
                                  left: 15,
                                  right: 15,
                                ),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start,
                                    children: <Widget>[
                                      Text('DEFINITION :', style: TextStyle(
                                        fontFamily: 'Dongle',
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        height: 1.5,
                                        letterSpacing: 2.0,),
                                          textAlign: TextAlign.justify),
                                      Text(
                                          'A Interjections are small words that portray a large feeling in only a few words. '
                                              'Interjections emerge in sentences to set tone and emotion as one of the eight major components of speech.'
                                              ' Interjections express how the author or speaker feels without being grammatically related to the rest of the sentence.'
                                              '                                 You usually follow an interjection with an exclamation mark. ',
                                          style: TextStyle(
                                            fontFamily: 'Dongle',
                                            fontSize: 30,
                                            height: 0.9,
                                            letterSpacing: 1.0,),
                                          textAlign: TextAlign.justify),
                                    ]
                                )
                            )
                        ),
                        Container(
                            margin: const EdgeInsets.only(bottom: 10, top: 5),
                            height: 330,
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, bottom: 20),
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(80),
                                    ),
                                    boxShadow: [
                                      BoxShadow(color: Colors.blueGrey
                                          .withOpacity(0.4),
                                          spreadRadius: 4,
                                          blurRadius: 7),
                                    ]),
                                padding: const EdgeInsets.only(
                                  left: 10,

                                ),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start, children: <Widget>[
                                  Text('EXAMPLE OF INTERJECTION :', style: TextStyle(
                                    fontFamily: 'Dongle',
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    height: 1.5,
                                    letterSpacing: 2.0,),
                                      textAlign: TextAlign.justify),

                                  StyledText(
                                    text: 'for example : <bold>Ouch</bold>,'
                                        ' <bold>Oh no</bold>, <bold>Hey</bold>, '
                                        '<bold>eh</bold>, <bold>good lord</bold>,. ',
                                    style: TextStyle(fontFamily: 'Dongle',
                                      fontSize: 29,height: 0.9, letterSpacing: 1.0,),
                                    tags: {
                                      'bold': StyledTextTag(style: TextStyle(fontWeight: FontWeight.bold)),
                                    },
                                  ),
                                  Text('Example Sentence',
                                      style: TextStyle(
                                        fontFamily: 'Dongle',
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        height: 1.5,
                                        letterSpacing: 1.0,),
                                      textAlign: TextAlign.justify),
                                  StyledText(text: ' - <bold>Ouch</bold>, that hurt!',
                                      style: TextStyle(fontFamily: 'Dongle',
                                        fontSize: 30,
                                        height: 0.9,
                                        letterSpacing: 1.0,),
                                    tags: {
                                    'bold': StyledTextTag(style: TextStyle(fontWeight: FontWeight.bold)),
                                    },
                                  ),
                                  StyledText(text:' - <bold>Oh no</bold>, I forgot that the exam was today.',
                                      style: TextStyle(fontFamily: 'Dongle',
                                        fontSize: 30,
                                        height: 0.9,
                                        letterSpacing: 1.0,),
                                    tags: {
                                    'bold': StyledTextTag(style: TextStyle(fontWeight: FontWeight.bold)),
                                    },
                                  ),
                                  StyledText(text:' - I heard one guy say to another guy, "He has a new car, <bold>eh?</bold>"',
                                      style: TextStyle(fontFamily: 'Dongle',
                                        fontSize: 30,
                                        height: 0.9,
                                        letterSpacing: 1.0,),
                                    tags: {
                                      'bold': StyledTextTag(style: TextStyle(fontWeight: FontWeight.bold)),
                                    },

                                  ),
                                ]
                                )
                            )
                        ),
                        Container(
                            margin: const EdgeInsets.only(bottom: 10, top: 5),
                            height: 320,
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, bottom: 20),
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(color: Colors.blueGrey
                                          .withOpacity(0.4),
                                          spreadRadius: 4,
                                          blurRadius: 7),
                                    ]
                                ),

                                padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
                                child: Column(
                                    children:[
                                      AspectRatio(
                                        aspectRatio: controller.value.aspectRatio,
                                        child: VideoPlayer(controller),
                                      ),

                                      Container( //duration of video
                                        child: Text("Total Duration: " + controller.value.duration.toString()),
                                      ),

                                      Container(
                                          child: VideoProgressIndicator(
                                              controller,
                                              allowScrubbing: true,
                                              colors:VideoProgressColors(
                                                backgroundColor: Colors.black87,
                                                playedColor: Colors.redAccent.shade400,
                                                bufferedColor: Colors.white30,
                                              )
                                          )
                                      ),

                                      Container(
                                        child: Row(
                                          children: [
                                            IconButton(
                                                onPressed: (){
                                                  if(controller.value.isPlaying){
                                                    controller.pause();
                                                  }else{
                                                    controller.play();
                                                  }

                                                  setState(() {

                                                  });
                                                },
                                                icon:Icon(controller.value.isPlaying?Icons.pause:Icons.play_arrow)
                                            ),

                                            IconButton(
                                                onPressed: (){
                                                  controller.seekTo(Duration(seconds: 0));

                                                  setState(() {

                                                  });
                                                },
                                                icon:Icon(Icons.stop)
                                            )
                                          ],
                                        ),
                                      )
                                    ]
                                )
                            )
                        )
                      ],
                    )
                )
            )
          ],
        )
    );
  }
}