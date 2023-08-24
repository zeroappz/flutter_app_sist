import '../../app_lib/app_lib.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _obscureText = true;
  IconData _iconVisible = Icons.visibility_off;

  final emailController = TextEditingController();
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  final phoneController = TextEditingController();

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
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          // top blue background gradient
          Container(
            height: MediaQuery.of(context).size.height / 3.5,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [ColorConstants.primaryColor, Colors.red],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
          ),
          // set your logo here
          Container(
              margin: EdgeInsets.fromLTRB(
                  0, MediaQuery.of(context).size.height / 20, 0, 0),
              alignment: Alignment.topCenter,
              child: Image.asset('assets/images/logo.png', height: 120)),
          ListView(
            children: <Widget>[
              // create form login
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 5,
                margin: EdgeInsets.fromLTRB(
                    32, MediaQuery.of(context).size.height / 3.5 - 72, 32, 0),
                color: Colors.white,
                child: Container(
                    margin: const EdgeInsets.fromLTRB(24, 0, 24, 20),
                    child: Column(
                      children: <Widget>[
                        const SizedBox(
                          height: 40,
                        ),
                        const Center(
                          child: Text(
                            'SIGN UP',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextField(
                          controller: userNameController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey[600]!)),
                              enabledBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: ColorConstants.primaryColor),
                              ),
                              labelText: 'Name',
                              labelStyle: TextStyle(color: Colors.grey[700])),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextField(
                          keyboardType: TextInputType.phone,
                          controller: phoneController,
                          decoration: InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey[600]!)),
                              enabledBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: ColorConstants.primaryColor),
                              ),
                              labelText: 'Phone Number',
                              labelStyle: TextStyle(color: Colors.grey[700]!)),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey[600]!)),
                              enabledBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: ColorConstants.primaryColor),
                              ),
                              labelText: 'Email',
                              labelStyle: TextStyle(color: Colors.grey[700])),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextField(
                          obscureText: _obscureText,
                          controller: passwordController,
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey[600]!)),
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: ColorConstants.primaryColor),
                            ),
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Colors.grey[700]),
                            suffixIcon: IconButton(
                                icon: Icon(_iconVisible,
                                    color: Colors.grey[700], size: 20),
                                onPressed: () {
                                  _toggleObscureText();
                                }),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        SizedBox(
                          width: double.maxFinite,
                          child: TextButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) =>
                                      ColorConstants.primaryColor,
                                ),
                                overlayColor: MaterialStateProperty.all(
                                    Colors.transparent),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                              ),
                              onPressed: () {
                                Fluttertoast.showToast(
                                    msg: 'Click create account',
                                    toastLength: Toast.LENGTH_SHORT);
                                signUp(
                                    emailController.text,
                                    passwordController.text,
                                    userNameController.text,
                                    phoneController.text);
                              },
                              child: const Padding(
                                padding: EdgeInsets.symmetric(vertical: 5),
                                child: Text(
                                  'CREATE ACCOUNT',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                              )),
                        ),
                      ],
                    )),
              ),
              const SizedBox(
                height: 50,
              ),
              // create sign up link
              Center(
                child: Wrap(
                  children: <Widget>[
                    const Text('Already have an account? '),
                    GestureDetector(
                      onTap: () {
                        Fluttertoast.showToast(
                            msg: 'Click signin',
                            toastLength: Toast.LENGTH_SHORT);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) {
                              return const SignInScreen();
                            },
                          ),
                        );
                      },
                      child: const Text(
                        'Sign In',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w700),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          )
        ],
      ),
    );
  }

  signUp(email, password, username, phone) {
    /// Validating user login
    if (email.isNotEmpty &&
        password.isNotEmpty &&
        username.isNotEmpty &&
        phone.isNotEmpty) {
      debugPrint("Sign Up Successful");
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) {
            return const SignInScreen();
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
