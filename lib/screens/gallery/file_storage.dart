// import 'dart:convert';
// import 'dart:io';

// import 'package:flutter/services.dart';
// import 'package:flutter_app/app_lib/app_lib.dart';

// // void main() => runApp(FileAccess());

// class FileAccess extends StatefulWidget {
//   @override
//   _FileAccessState createState() => _FileAccessState();
// }

// class _FileAccessState extends State<FileAccess> {
//   // Future<PermissionStatus> _permissionStatus = Permission.storage.request();
//   late bool permissionGranted;
//   List<FileModel> _files = <FileModel>[];
//   FileModel? _selectedModel;

//   @override
//   void initState() {
//     super.initState();
//     _getStoragePermission();
//   }

//   Future _getStoragePermission() async {
//     var permission = await Permission.manageExternalStorage.request();
//     // if (permission.isDenied) {
//     if (permission.isGranted) {
//       // Permission is granted
//       // debugPrint("********** Granted ***********");
//       await getImagesPath();
//       debugPrint("********** Images Path access ***********");
//     } else if (permission.isDenied) {
//       // Permission is denied
//       debugPrint("********** Denied ***********");
//       // await openAppSettings();
//     } else if (permission.isPermanentlyDenied) {
//       // Permission is permanently denied
//       debugPrint("********** Permanently Denied ***********");
//       // await openAppSettings();
//     }
//     // }
//   }

//   getImagesPath() async {
//     var imagePath = await StoragePath.imagesPath;
//     var images = jsonDecode(imagePath!) as List;
//     _files = images.map<FileModel>((e) => FileModel.fromJson(e)).toList();
//     if (_files != null && _files.length > 0)
//       setState(() {
//         _selectedModel = _files[0];
//       });
//   }

//   Future<String> getVideoPath() async {
//     String videoPath = "";
//     try {
//       videoPath = (await StoragePath.videoPath)!;
//       var response = jsonDecode(videoPath);
//       print(response);
//     } on PlatformException {
//       videoPath = 'Failed to get path';
//     }
//     return videoPath;
//   }

//   Future<String> getAudioPath() async {
//     String audioPath = "";
//     try {
//       audioPath = (await StoragePath.audioPath)!;
//       var response = jsonDecode(audioPath);
//       print(response);
//     } on PlatformException {
//       audioPath = 'Failed to get path';
//     }
//     return audioPath;
//   }

//   Future<dynamic> getFilePath() async {
//     String? filePath = "";
//     try {
//       filePath = await StoragePath.filePath;
//       var response = jsonDecode(filePath!);
//       print(response);
//     } on PlatformException {
//       filePath = 'Failed to get path';
//     }
//     return filePath;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Plugin example app'),
//         ),
//         body: _selectedModel == null ||
//                 (_selectedModel != null && _selectedModel!.files!.length < 1)
//             ? Container()
//             : GridView.builder(
//                 itemCount: _selectedModel!.files!.length,
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 4,
//                   crossAxisSpacing: 4,
//                   mainAxisSpacing: 4,
//                 ),
//                 itemBuilder: (_, i) {
//                   var file = _selectedModel!.files![i];
//                   return Container(
//                     child: Image.file(
//                       File(file as String),
//                       fit: BoxFit.cover,
//                     ),
//                   );
//                 },
//               ),
//       ),
//     );
//   }
// }
