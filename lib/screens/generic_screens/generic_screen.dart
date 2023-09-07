import 'package:flutter_app/app_lib/app_lib.dart';

class GenericScreen extends StatefulWidget {
  const GenericScreen({super.key});

  @override
  State<GenericScreen> createState() => _GenericScreenState();
}

class _GenericScreenState extends State<GenericScreen> {
  final GlobalWidgets _globalWidgets = GlobalWidgets();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _globalWidgets.globalAppBar('Generic Screen'),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        children: [
          Container(
            child: const Text('Map Screens'),
          ),
          Container(
            margin: const EdgeInsets.only(top: 24.0),
            child: Row(
              children: [
                Flexible(
                  flex: 5,
                  child: Container(
                    child: const Text('Choose The Screens'),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.center,
                    child: const Icon(
                      Icons.map,
                      size: 50,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 40),
            child: const Text(
              'List',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          _globalWidgets.screenDetailsList(
            context: context,
            title: 'SignIn Screen',
            id: 1,
            page: const SignInScreen(),
          ),
          _globalWidgets.screenDetailsList(
            context: context,
            title: 'Gallery Screen',
            id: 2,
            page: const GalleryScreen(),
          ),
          _globalWidgets.screenDetailsList(
            context: context,
            title: 'Initial Screen',
            id: 3,
            page: const InitialScreen(
              title: 'Initial Screen',
              intObj: 10,
            ),
          ),
          _globalWidgets.screenDetailsList(
            context: context,
            title: 'Sign Up Screen',
            id: 4,
            page: const SignUpScreen(),
          ),
          const SizedBox(
            height: 20,
          ),
          const Divider(
            thickness: 2,
          ),
          TextButton(
            onPressed: () {
              MapsLauncher.launchCoordinates(11.4324242, 78.3231231);
            },
            child: const Text('Open Map Application'),
          )
        ],
      ),
    );
  }
}
