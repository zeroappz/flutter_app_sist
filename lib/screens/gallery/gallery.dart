import '../../app_lib/app_lib.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({super.key});

  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  // late final Permission _permission;
  // PermissionStatus _permissionStatus = PermissionStatus.denied;
  late bool permissionGranted;

  @override
  void initState() {
    super.initState();
    debugPrint("********* Init State ***********");
    _getStoragePermission();
  }

  Future<void> _getStoragePermission() async {
    DeviceInfoPlugin plugin = DeviceInfoPlugin();
    AndroidDeviceInfo android = await plugin.androidInfo;
    if (android.version.sdkInt! < 33) {
      if (await Permission.storage.request().isGranted) {
        setState(() {
          permissionGranted = true;
        });
      } else if (await Permission.storage.request().isPermanentlyDenied) {
        await openAppSettings();
      } else if (await Permission.audio.request().isDenied) {
        setState(() {
          permissionGranted = false;
        });
      }
    } else {
      if (await Permission.photos.request().isGranted) {
        setState(() {
          permissionGranted = true;
        });
      } else if (await Permission.photos.request().isPermanentlyDenied) {
        await openAppSettings();
      } else if (await Permission.photos.request().isDenied) {
        setState(() {
          permissionGranted = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    /// DefaultTabController - Total Number of Tabs that we are going to use it in the scree
    return DefaultTabController(
      length: 4, // length of the TC should meet the total number of Tabs
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Gallery',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: SizeConstants.fontSize),
            ),
          ),
          bottom: const TabBar(
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            labelPadding: EdgeInsets.only(bottom: 15.0),
            tabs: <Widget>[
              Text('Images'),
              Text('Files'),
              Text('Audio'),
              Text('Video'),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            ImageGallery(),
            FilesGallery(),
            AudioGallery(),
            VideosGallery(),
          ],
        ),
      ),
    );
  }
}
