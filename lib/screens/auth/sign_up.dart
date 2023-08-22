import '../../app_lib/app_lib.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  IconData _iconVisible = Icons.visibility_off;
  bool _obscureText = true;

  final emailController = TextEditingController();
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  void _toggleObscureText() {
    setState(() {
      _obscureText = !_obscureText;
      if (_obscureText == true) {
        _iconVisible = Icons.visibility_off;
      } else {
        _iconVisible = Icons.visibility;
      }
    });
  }

  @override
  void initState() {
    debugPrint("Init Loaded");
    super.initState();
  }

  @override
  void dispose() {
    /// Dispose is used to release the memory
    debugPrint("Dispose Loaded");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    /// Safe Area is a widget that provides a safe area for the screen to
    /// avoid the notch
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            /// Load the Background
            Container(
              height: MediaQuery.of(context).size.height / 3,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    ColorConstants.primaryColor,
                    Colors.red,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),

            /// Add your Logo
            Container(
              margin: EdgeInsets.fromLTRB(
                0,
                MediaQuery.of(context).size.height / 15,
                0,
                0,
              ),
              alignment: Alignment.topCenter,
              child: Image.asset(
                'assets/images/logo.png',
                height: 120,
              ),
            ),

            /// Login Form
            ListView(
              children: <Widget>[
                Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: Colors.white,
                  margin: EdgeInsets.fromLTRB(
                    30,
                    MediaQuery.of(context).size.height / 3 - 72,
                    30,
                    0,
                  ),
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(24, 0, 24, 20),
                    child: Column(
                      children: <Widget>[
                        const SizedBox(
                          height: 40,
                        ),
                        const Center(
                          child: Text(
                            'SIGN IN',
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextField(
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: ColorConstants.primaryColor,
                                width: 2,
                              ),
                            ),
                            labelText: 'Email',
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextField(
                          controller: passwordController,
                          obscureText: _obscureText,
                          decoration: InputDecoration(
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: ColorConstants.primaryColor,
                                width: 2,
                              ),
                            ),
                            labelText: 'Password',
                            suffix: IconButton(
                              onPressed: () {
                                debugPrint('Password is visible now!!');

                                /// Obscure() is used to hide the text
                                _toggleObscureText();
                              },
                              icon: Icon(_iconVisible, color: Colors.grey),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            debugPrint('Login Pressed');
                            debugPrint(emailController.text);
                            debugPrint(passwordController.text);
                            signUp(
                                emailController.text, passwordController.text);
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              ColorConstants.primaryColor,
                            ),
                          ),
                          child: const Text('Login'),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: Wrap(
                    children: [
                      const Text("Don't have an account?"),
                      GestureDetector(
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            color: ColorConstants.primaryColor,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) {
                                return const SignUpScreen();
                              },
                            ),
                          );
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  signUp(email, password) {
    /// Validating user login
    if (email.isNotEmpty && password.isNotEmpty) {
      debugPrint("Sign Up Successful");
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) {
            return SignInScreen();
          },
        ),
      );
      Fluttertoast.showToast(
        msg: "Sign Up Successful",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
      );
    } else {
      Fluttertoast.showToast(
        msg: "Already Exist Credentials",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
      );

      /// Existing Email
      /// Both Passwords are not Matched
      showDialog(
          context: context,
          builder: (context) {
            return const AlertDialog(
              content: Text("Please provide valid credentials"),
            );
          });
    }
  }
}
