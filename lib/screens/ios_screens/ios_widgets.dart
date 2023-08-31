import 'package:flutter_app/app_lib/app_lib.dart';

class CupertinoWidgetScreen extends StatefulWidget {
  const CupertinoWidgetScreen({super.key});

  @override
  State<CupertinoWidgetScreen> createState() => _CupertinoWidgetScreenState();
}

class _CupertinoWidgetScreenState extends State<CupertinoWidgetScreen> {
  @override
  void initState() {
    debugPrint("Cupertino Init Loaded");
    super.initState();
  }

  @override
  void dispose() {
    /// Dispose is used to release the memory
    debugPrint("Cupertino Dispose Loaded");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('iOS Widgets'),
        elevation: 4,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * 0.05,
        margin: const EdgeInsets.symmetric(vertical: 20.0),
        child: CupertinoButton.filled(
          child: const Text('Alert Dialog'),
          onPressed: () {
            showCupertinoDialog<void>(
              context: context,
              builder: (BuildContext context) => CupertinoAlertDialog(
                title: const Text('Show Alert'),
                content: const Text('Proceed with destructive Action?'),
                actions: [
                  CupertinoDialogAction(
                    child: const Text('No'),
                    onPressed: () {
                      Fluttertoast.showToast(
                        msg: 'Pressed No Btn',
                        toastLength: Toast.LENGTH_SHORT,
                      );
                      Navigator.pop(context);
                    },
                  ),
                  CupertinoDialogAction(
                    child: const Text('Yes'),
                    onPressed: () {
                      Fluttertoast.showToast(
                        msg: 'Pressed Yes Btn',
                        toastLength: Toast.LENGTH_SHORT,
                      );
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
