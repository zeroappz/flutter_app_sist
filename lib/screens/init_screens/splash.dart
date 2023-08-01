import '../../app_lib/app_lib.dart';

/// Stateless widget for static splash screen
///  TImer will execute for a splash screen duration and navigate to the home screen
///
///

// class SplashScreen extends StatelessWidget {
//   const SplashScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // Runs when the widget is first created
    super.initState();
    debugPrint("********* Init State Loaded ***********");
    startTimer();

    /// Loading APIs
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // Empty Container
      child: Image.asset('assets/images/splash.png'),
    );
  }

  Future<void> startTimer() async {
    debugPrint("********* Start Timer Loaded ***********");
    Timer(const Duration(milliseconds: 3000), () async {
      // Navigate to the home screen after 2 seconds
      await Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const OnBoardingScreen()),
      );
    });
  }
}

/// Future , Async, Await, Mounted State
/// String, List, Map, Double, int, bool
/// dynamic
///
/// Asynchronous - Not blocking the main thread
