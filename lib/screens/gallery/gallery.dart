import '../../app_lib/app_lib.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({super.key});

  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  // late final Permission _permission;
  // PermissionStatus _permissionStatus = PermissionStatus.denied;

  @override
  void initState() {
    super.initState();
    debugPrint("********* Init State ***********");
    getPermission();
  }

  Future<void> getPermission() async {
    // final status = await _permission.status;
    // setState(() => _permissionStatus = status);

    final permissionStatus = Permission.storage.status;
    debugPrint(permissionStatus.isDenied.toString());
    if (permissionStatus.isDenied == false) {
      await Permission.storage.request();
    } else if (permissionStatus.isPermanentlyDenied == true) {
      await openAppSettings();
    } else {
      debugPrint("Not trusted us to provide Storage Access");
      await Permission.storage.request();
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
