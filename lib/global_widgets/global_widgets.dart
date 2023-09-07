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

  PreferredSizeWidget globalAppBar(String title) {
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.black),
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      centerTitle: true,
      title: Text(title),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1.0),
        child: Container(
          color: Colors.grey[100],
          height: 1.0,
        ),
      ),
    );
  }

  final List<IconData> _iconList = [
    Icons.menu,
    Icons.book,
    Icons.person,
    Icons.create,
    Icons.local_activity,
    Icons.login,
    Icons.pregnant_woman_outlined,
    Icons.cases,
  ];

  final Random _random = Random();

  Color _getRandomColors() {
    return Color.fromARGB(
      255,
      _random.nextInt(255),
      _random.nextInt(255),
      _random.nextInt(255),
    );
  }

  Widget screenDetailsList(
      {required BuildContext context,
      required String title,
      required int id,
      required StatefulWidget page}) {
    Color color = _getRandomColors();
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        child: Card(
          elevation: 0.5,
          child: Container(
            margin: const EdgeInsets.all(18),
            child: Row(
              children: [
                Icon(
                  _iconList[_random.nextInt(_iconList.length)],
                  color: color,
                ),
                const SizedBox(
                  width: 24,
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(top: 2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Icon(
                  Icons.chevron_right,
                  size: 30,
                  color: color,
                ),
              ],
            ),
          ),
        ),
      ),
    );
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
