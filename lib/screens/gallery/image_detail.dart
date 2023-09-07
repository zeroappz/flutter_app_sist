import 'package:flutter_app/app_lib/app_lib.dart';

class ImageDetailsScreen extends StatefulWidget {
  final String imgUrl;
  const ImageDetailsScreen(this.imgUrl, {super.key});

  @override
  State<ImageDetailsScreen> createState() => _ImageDetailsScreenState();
}

class _ImageDetailsScreenState extends State<ImageDetailsScreen> {
  @override
  void initState() {
    debugPrint("Init Loaded");
    super.initState();
  }

  @override
  void dispose() {
    /// Dispose is used to release the memory
    debugPrint("Dispose Loaded");
    super.dispose();
  }

  /// Cache
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        body: Center(
          // child: Image.network(
          //   widget.imgUrl,
          // ),
          child: CachedNetworkImage(
            imageUrl: widget.imgUrl,
            placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
      ),
      onTap: () {
        Navigator.pop(context);
      },
    );
  }
}
