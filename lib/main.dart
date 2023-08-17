import 'app_lib/app_lib.dart';

void main() {
  // function where program starts execution
  runApp(const SathyabamaMobileApp());
  // runApp() function is used to execute the widget tree
}

/// The SathyabamaMobileApp class is a Dart class that extends StatelessWidget.
class SathyabamaMobileApp extends StatelessWidget {
  const SathyabamaMobileApp({super.key});

  // This widget is the root of your application. Widget Class - Widget build() method is required.

  /*
  Widget build(parameter){
    return <SomeWidget>;
  }

  String build(parameter){
    return 0;
  }

  
  */
  // Reload - Reloading hot reload
  // Debug Build APK: 120MB
  // Production (Release) Apk: 30-40MB - 20Mb goes to plugins like maps, images, video etc.
  // Pay STore: 15MB

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: StringConstants.appName,
      theme: ThemeData(
        primarySwatch: ColorConstants.primaryColor,
      ),
      // home: const InitialScreen(
      //   title: StringConstants.appName,
      //   intObj: 1,
      // ));
      // Class(title: 'parameter')
      // home: const SplashScreen(),
      home: FilesGallery(),
    );
  }
}
