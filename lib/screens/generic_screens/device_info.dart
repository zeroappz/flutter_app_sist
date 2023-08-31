import '../../app_lib/app_lib.dart';

class DeviceInformation extends StatefulWidget {
  const DeviceInformation({super.key});

  @override
  State<DeviceInformation> createState() => _DeviceInformationState();
}

class _DeviceInformationState extends State<DeviceInformation> {
  static final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
  Map<String, dynamic> _deviceData = <String, dynamic>{};

  @override
  void initState() {
    super.initState();
    _getPlatform();
  }

  Future<void> _getPlatform() async {
    Map<String, dynamic> deviceInfo = {};
    // String defaultTargetPlatform = TargetPlatform.android.name;
    debugPrint(TargetPlatform.android.name);
    debugPrint(TargetPlatform.linux.name);
    debugPrint(TargetPlatform.windows.name);
    debugPrint(TargetPlatform.macOS.name);
    debugPrint(TargetPlatform.iOS.name);
    debugPrint(TargetPlatform.fuchsia.name);

    /// Global Flutter constant
    /// kIsWeb, kDebugMode...
    try {
      deviceInfo = _readIosDeviceInfo(await deviceInfoPlugin.iosInfo);
      // if (kIsWeb) {
      //   deviceInfo = _readWebBrowserInfo(await deviceInfoPlugin.webBrowserInfo);
      //   // deviceData = "Web Platform";
      // } else {
      //   if (TargetPlatform.android.name == "android") {
      //     deviceInfo =
      //         _readAndroidBuildData(await deviceInfoPlugin.androidInfo);
      //   } else if (TargetPlatform.linux.name == 'linux') {
      //     deviceInfo = _readLinuxDeviceInfo(await deviceInfoPlugin.linuxInfo);
      //   } else if (TargetPlatform.iOS.name == 'iOS') {
      //     deviceInfo = _readIosDeviceInfo(await deviceInfoPlugin.iosInfo);
      //   } else if (TargetPlatform.macOS.name == 'macOS') {
      //     deviceInfo = _readMacOsDeviceInfo(await deviceInfoPlugin.macOsInfo);
      //   } else if (TargetPlatform.windows.name == 'windows') {
      //     deviceInfo =
      //         _readWindowsDeviceInfo(await deviceInfoPlugin.windowsInfo);
      //   } else {
      //     debugPrint("Failed to get th Platform Information");
      //   }
      // }
    } on PlatformException {
      deviceInfo = <String, dynamic>{
        'Error:': 'Failed to get platform version.'
      };
    }

    if (!mounted) return;

    setState(() {
      _deviceData = deviceInfo;
    });
  }

  Map<String, dynamic> _readAndroidBuildData(AndroidDeviceInfo build) {
    return <String, dynamic>{
      'version.securityPatch': build.version.securityPatch,
      'version.sdkInt': build.version.sdkInt,
      'version.release': build.version.release,
      'version.previewSdkInt': build.version.previewSdkInt,
      'version.incremental': build.version.incremental,
      'version.codename': build.version.codename,
      'version.baseOS': build.version.baseOS,
      'board': build.board,
      'bootloader': build.bootloader,
      'brand': build.brand,
      'device': build.device,
      'display': build.display,
      'fingerprint': build.fingerprint,
      'hardware': build.hardware,
      'host': build.host,
      'id': build.id,
      'manufacturer': build.manufacturer,
      'model': build.model,
      'product': build.product,
      'supported32BitAbis': build.supported32BitAbis,
      'supported64BitAbis': build.supported64BitAbis,
      'supportedAbis': build.supportedAbis,
      'tags': build.tags,
      'type': build.type,
      'isPhysicalDevice': build.isPhysicalDevice,
      'systemFeatures': build.systemFeatures,
      'displaySizeInches': build.display,
      'bootLoader': build.bootloader,
    };
  }

  Map<String, dynamic> _readWebBrowserInfo(WebBrowserInfo data) {
    return <String, dynamic>{
      'browserName': describeEnum(data.browserName),
      'appCodeName': data.appCodeName,
      'appName': data.appName,
      'appVersion': data.appVersion,
      'deviceMemory': data.deviceMemory,
      'language': data.language,
      'languages': data.languages,
      'platform': data.platform,
      'product': data.product,
      'productSub': data.productSub,
      'userAgent': data.userAgent,
      'vendor': data.vendor,
      'vendorSub': data.vendorSub,
      'hardwareConcurrency': data.hardwareConcurrency,
      'maxTouchPoints': data.maxTouchPoints,
    };
  }

  Map<String, dynamic> _readIosDeviceInfo(IosDeviceInfo data) {
    return <String, dynamic>{
      'name': data.name,
      'systemName': data.systemName,
      'systemVersion': data.systemVersion,
      'model': data.model,
      'localizedModel': data.localizedModel,
      'identifierForVendor': data.identifierForVendor,
      'isPhysicalDevice': data.isPhysicalDevice,
      'utsname.sysname:': data.utsname.sysname,
      'utsname.nodename:': data.utsname.nodename,
      'utsname.release:': data.utsname.release,
      'utsname.version:': data.utsname.version,
      'utsname.machine:': data.utsname.machine,
    };
  }

  Map<String, dynamic> _readLinuxDeviceInfo(LinuxDeviceInfo data) {
    return <String, dynamic>{
      'name': data.name,
      'version': data.version,
      'id': data.id,
      'idLike': data.idLike,
      'versionCodename': data.versionCodename,
      'versionId': data.versionId,
      'prettyName': data.prettyName,
      'buildId': data.buildId,
      'variant': data.variant,
      'variantId': data.variantId,
      'machineId': data.machineId,
    };
  }

  Map<String, dynamic> _readMacOsDeviceInfo(MacOsDeviceInfo data) {
    return <String, dynamic>{
      'computerName': data.computerName,
      'hostName': data.hostName,
      'arch': data.arch,
      'model': data.model,
      'kernelVersion': data.kernelVersion,
      'osRelease': data.osRelease,
      'activeCPUs': data.activeCPUs,
      'memorySize': data.memorySize,
      'cpuFrequency': data.cpuFrequency,
      'systemGUID': data.systemGUID,
    };
  }

  Map<String, dynamic> _readWindowsDeviceInfo(WindowsDeviceInfo data) {
    return <String, dynamic>{
      'numberOfCores': data.numberOfCores,
      'computerName': data.computerName,
      'systemMemoryInMegabytes': data.systemMemoryInMegabytes,
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_getAppBarTitle()),
        elevation: 4,
      ),
      body: ListView(
        children: _deviceData.keys.map(
          (String property) {
            return Row(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    property,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      '${_deviceData[property]}',
                      maxLines: 10,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            );
          },
        ).toList(),
      ),
    );
  }

  String _getAppBarTitle() => kIsWeb ? 'Web Platform info' : 'iOS Device Info';
}
