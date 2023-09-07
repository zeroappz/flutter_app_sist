import '../../app_lib/app_lib.dart';

class VideoplayerScreen extends StatefulWidget {
  const VideoplayerScreen({super.key});

  @override
  State<VideoplayerScreen> createState() => _VideoplayerScreenState();
}

class _VideoplayerScreenState extends State<VideoplayerScreen> {
  final List<YoutubePlayerController> _controllers = [
    'EUGQ0FXqYfQ',
    'ulCdIvwgjv8',
    'hoOg9zcqtgc',
    '84fdUxOrRYA',
    'ansD5Fjjc3Y',
    'igyIAi0GND8'
  ]
      .map<YoutubePlayerController>(
        (videoId) => YoutubePlayerController(
          initialVideoId: videoId,
          flags: const YoutubePlayerFlags(
            autoPlay: true,
            mute: false,
            loop: false,
            isLive: false,
            enableCaption: true,
            captionLanguage: 'en',
            forceHD: false,
            disableDragSeek: false,
          ),
        ),
      )
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Youtube Video Player',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: SizeConstants.fontSize),
          ),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 6.0),
            padding: const EdgeInsets.all(12.0),
            child: YoutubePlayer(
              controller: _controllers[index],
              actionsPadding: const EdgeInsets.only(left: 16.0),
              key: ObjectKey(_controllers[index]),
              bottomActions: [
                CurrentPosition(),
                const SizedBox(
                  width: 10.0,
                ),
                ProgressBar(
                  isExpanded: true,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                RemainingDuration(),
                FullScreenButton()
              ],
            ),
          );
        },
        itemCount: _controllers.length,
      ),
    );
  }
}
