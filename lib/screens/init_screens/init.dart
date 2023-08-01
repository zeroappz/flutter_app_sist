import '../../app_lib/app_lib.dart';

class InitialScreen extends StatefulWidget {
  // Dynamic Widget
  const InitialScreen({super.key, required this.title, required this.intObj});
  final String title;
  final int intObj;

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  int _counter = 10;

  void _incrementCounter() {
    setState(() {
      // State Management to manipulate the variable or function or a Class
      debugPrint('Incremented Value: $_counter.toString()');
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Primary Widget
      appBar: AppBar(
        title: Center(
          child: Text(
            widget.title,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: SizeConstants.fontSize),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.message),
            // const -
            onPressed: () {
              // debugPrint(10.toString());
              debugPrint('Message Icon Pressed');
            },
          ),
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // debugPrint(10.toString());
              debugPrint('Notification Icon Pressed');
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Let us see the value change:',
            ),
            Text(
              _counter.toString(), // String Interpolation - $variable
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      drawer: const SideMenu(
          userName: "Sathyabama Institute", email: "pravileaf@gmail.com"),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter, // function
        tooltip: 'Increment Button',
        child: const Icon(Icons.delete),
      ), // This trailing comma makes auto-formatting nicer for build methods.
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.pinkAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Colors.pinkAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Inbox',
            backgroundColor: Colors.pinkAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.pinkAccent,
          ),
        ],
      ),
    );
  }
}
