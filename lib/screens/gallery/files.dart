// import 'dart:convert';

// import '../../app_lib/app_lib.dart';

// class FilesGallery extends StatefulWidget {
//   const FilesGallery({super.key});

//   @override
//   State<FilesGallery> createState() => _FilesGalleryState();
// }

// class _FilesGalleryState extends State<FilesGallery> {
//   List<FileModel> _files = [];
//   FileModel? _selectedModel;

//   @override
//   void initState() {
//     super.initState();
//     debugPrint("********* Init State File Screen ***********");
//     getFilePath();
//   }

//   Future<void> getFilePath() async {
//     String? filePath = '';
//     try {
//       filePath = await StoragePath.filePath;
//       var response = jsonDecode(filePath!);
//       debugPrint(response.toString());
//     } on Exception catch (obj) {
//       debugPrint(obj.toString());
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
