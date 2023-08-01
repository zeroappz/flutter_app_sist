import 'package:flutter_app/app_lib/app_lib.dart';

class GlobalWidgets {
  /// CustomAppButton function
  Widget customAppButton(BuildContext context, String btnName) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorConstants.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        onPressed: () {
          debugPrint("Get Started Button Pressed");
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const InitialScreen(
                title: StringConstants.appName,
                intObj: 1,
              ),
            ),
          );
        },
        child: Text(btnName));
  }
}

/// CustomAppButton function
class SideMenu extends StatelessWidget {
  final String userName;
  final String email;
  const SideMenu({
    super.key,
    required this.userName,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    /// ListView , DrawerHeader, ListTile
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(color: Colors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("assets/images/onboard_1.jpg",
                    width: 80.0, height: 80.0),
                Text(userName),
                const Divider(),
                Text(email),
              ],
            ),
          ),
          const ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
          ),
          const ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
          ),
          const ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
          ),
          const ListTile(
            leading: Icon(Icons.message),
            title: Text('Notifications'),
          ),
          const ListTile(
            leading: Icon(Icons.info),
            title: Text('About'),
          ),
          const ListTile(
            leading: Icon(Icons.book),
            title: Text('Terms & Conditions'),
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Divider(thickness: 2.0, color: Colors.black38),
          const SizedBox(
            height: 10.0,
          ),
          ListTile(
            trailing: const Icon(Icons.exit_to_app),
            title: const Text('Log out'),
            onTap: () {
              debugPrint("Log out pressed");
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SplashScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
